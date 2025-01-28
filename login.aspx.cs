
using System;
using System.IO;
using System.Web.UI;

namespace UserAuthApp
{
    public partial class login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx"); // to redirct to the sign up page

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string userEmail = txtEmail.Text;
            string userpassword = txtPassword.Text;

            String filePath = Server.MapPath("~/App_Data/users.txt");

            

            if (String.IsNullOrEmpty(userEmail) || String.IsNullOrEmpty(userpassword))
            {
                lblMessage.Text = "All Feilds Are Required";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Visible = true;
                return;
            }

            else
            {
                string[] users = File.ReadAllLines(filePath);

                foreach(string user in users)
                {
                    string[] userData = user.Split(',');

                    if(userEmail=="admin@gmail.com" && userpassword == "12345")
                    {
                        lblMessage.Text = "Login seccessfully!";
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                        lblMessage.Visible = true;
                        Response.Redirect("AdminCards.aspx");
                    }
                    else if (userEmail == userData[1] &&  userpassword == userData[3])
                    {
                        lblMessage.Text = "Login seccessfully!";
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                        lblMessage.Visible = true;
                        Response.Redirect("StudentsCards.aspx");
                    }
                }
            }

            lblMessage.Text = "Invalid username or password!";
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Visible = true;
        }
    }
}
