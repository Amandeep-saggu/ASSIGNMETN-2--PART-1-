using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeTrackerApp
{
    public partial class Default : System.Web.UI.Page
    {
        private TimeTrackerDBEntities db = new TimeTrackerDBEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            TT_Users New_User = new TT_Users();
            string username = Username.Text;
            string password = Password.Text;

            //AUthenticate User Login From Database
           New_User=db.TT_Users.Where(x => x.Username == username && x.Password == password).SingleOrDefault();

            if (New_User.UserID > 0)
            {
                //User Exist & Get Logged in UserID
                Session["UserID"] = New_User.UserID.ToString();
                Session["User"] = New_User.Username.ToString();

                FormsAuthentication.RedirectFromLoginPage(New_User.Username.ToString(), true);

                ////Response.Redirect("Dashboard.aspx");
             }
           

        
        }
    }
}