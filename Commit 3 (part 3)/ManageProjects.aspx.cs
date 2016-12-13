using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeTrackerApp
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        private TimeTrackerDBEntities db = new TimeTrackerDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }
        }
        private void BindGrid()
        {
            var listitemsrecord = (from x in db.TT_Projects select x).ToList<TT_Projects>();
            GridView1.DataSource = listitemsrecord;
            GridView1.DataBind();
        }

        protected void Insert(object sender, EventArgs e)
        {
            string Title = txtTitle.Text;
            TT_Projects project = new TT_Projects();
            project.Title = Title;
            project.UserId = Convert.ToInt32(Session["User"].ToString());
            
            db.TT_Projects.Add(project);
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
            int projectId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string Title = (row.FindControl("txtTitle") as TextBox).Text;

            TT_Projects project = db.TT_Projects.Single(proj => proj.ProjectID == projectId);
            //Field which will be update
            project.Title = Title;
            // executes the appropriate commands to implement the changes to the database
            db.SaveChanges();
            
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != GridView1.EditIndex)
            {
                (e.Row.Cells[1].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
            }
        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int projectid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            TT_Projects project = db.TT_Projects.Single(proj => proj.ProjectID == projectid);

            db.TT_Projects.Remove(project);
            db.SaveChanges();  

            this.BindGrid();
        }
    }
}