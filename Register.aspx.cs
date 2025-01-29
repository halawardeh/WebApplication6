using System;
using System.IO;

namespace UserAuthApp
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx"); // to redirct to the login page

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string email = txtEmail.Text;
            string password = txtPassword.Text;
            string repassword = txtRepeatPassword.Text;


            if (String.IsNullOrEmpty(username) || String.IsNullOrEmpty(email) || String.IsNullOrEmpty(password) || String.IsNullOrEmpty(repassword))

            {
                lblMessage.Text = "All Field are Required";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Visible = true;
            }

            else if (password != repassword)
            {
                lblMessage.Text = "The two passwords are not the same";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Visible = true;

            }

            else
            {
                string filePAth = Server.MapPath("~/App_Data/users.txt"); //create a path for users file

                if (!File.Exists(filePAth)) // location to file 
                {
                    File.Create(filePAth); //create a file if not exist
                }
                string UserData = $"{username},{email},{password},{repassword}\n"; //formatting

                File.AppendAllText(filePAth, UserData); //add user data to the usersFile


                //using (StreamWriter sw = new StreamWriter(filePAth , true))
                //{
                //    sw.WriteLine(UserData);
                //}



                lblMessage.Text = "Sign up successfully!";
                lblMessage.Visible = true;
                lblMessage.ForeColor = System.Drawing.Color.Green;

                Response.Redirect("login.aspx"); // to redirct to the login page

            }








        }



    }
}
