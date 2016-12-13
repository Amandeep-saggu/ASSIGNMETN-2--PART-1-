using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeTrackerApp
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        private TimeTrackerDBEntities db = new TimeTrackerDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();
                this.fillprojects();
            }
        }
        private void BindGrid()
        {
            var listitemsrecord = (from x in db.TT_Enteries select x).ToList<TT_Enteries>();
            GridView1.DataSource = listitemsrecord;
            GridView1.DataBind();
        }

        protected void Insert(object sender, EventArgs e)
        {
            int fProjectID = Convert.ToInt32(DropDownList1.SelectedValue.ToString ());
            string fStartDate = StartDate.Text;
            string fStartTime = StartTime.Text;
            string fEndDate = EndDate.Text;
            string fEndTime = EndTime.Text;

            TT_Enteries Entries = new TT_Enteries();
            Entries.ProjectID = fProjectID;
            Entries.StartDate = fStartDate;
            Entries.StartTime = fStartTime;
            Entries.EndDate = fEndDate;
            Entries.EndTime = fEndTime;

            db.TT_Enteries.Add(Entries);

            db.SaveChanges();
            this.BindGrid();
        }

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.BindGrid();
        }

        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int EntryID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            int ProjectID = Convert.ToInt32((row.FindControl("txtprojectid") as TextBox).Text);
            string StartDate = (row.FindControl("txtStartDate") as TextBox).Text;
            string EndDate = (row.FindControl("txtStartTime") as TextBox).Text;
            string StartTime = (row.FindControl("txtEndDate") as TextBox).Text;
            string EndTime = (row.FindControl("txtEndTime") as TextBox).Text;

            TT_Enteries Entry = db.TT_Enteries.Single(proj => proj.EntryID == EntryID);
            //Field which will be update
            Entry.ProjectID = ProjectID;
            Entry.StartDate = StartDate;
            Entry.StartTime = StartTime;
            Entry.EndDate = EndDate;
            Entry.EndTime = EndTime;

            // executes the appropriate commands to implement the changes to the database
            db.SaveChanges();

            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != GridView1.EditIndex)
            {
                (e.Row.Cells[5].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
            }

        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int EntryID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            TT_Enteries Entry = db.TT_Enteries.Single(proj => proj.EntryID == EntryID);

            db.TT_Enteries.Remove(Entry);
            db.SaveChanges();

            this.BindGrid();
        }

        public void fillprojects()
        {
            var projects = db.TT_Projects.ToList<TT_Projects>();
            DropDownList1.DataSource = projects;
            DropDownList1.DataTextField = "Title";
            DropDownList1.DataValueField = "ProjectID";
            DropDownList1.DataBind();

        }
        
    }
}