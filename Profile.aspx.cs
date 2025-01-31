using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string userName = username.Text;
                string userEmail = email.Text;
                string userpassword = password.Text;

                if (Session["UserEmail"] != null && Session["UserEmail"].ToString() == email.Text)
                {
                  
                }

            }
        }

          
        


        


        protected void editProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("editeProfile.aspx");
        }
    }
}