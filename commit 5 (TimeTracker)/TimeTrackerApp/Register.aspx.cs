using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeTrackerApp
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        private TimeTrackerDBEntities db = new TimeTrackerDBEntities();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        #region Register User
        protected void Button2_Click(object sender, EventArgs e)
        {
            string fullname = Fullname.Text;
            string username = Username.Text;
            string password = Password.Text;

            TT_Users New_User = new TT_Users();
            New_User.FullName = fullname;
            New_User.Username = username;
            New_User.Password = password;
            db.TT_Users.Add(New_User);
            db.SaveChanges();
            Message.InnerText = "User Successfully Saved";
            Fullname.Text = "";
            Username.Text = "";
            Password.Text = "";

        }
        #endregion
       
    }
}