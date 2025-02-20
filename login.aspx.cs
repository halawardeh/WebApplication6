﻿
using System;
using System.IO;
using System.Web.UI;

namespace UserAuthApp
{
    public partial class login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                // Clear previous session data on page load
                Session.Clear();
            }
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
            String logpath = Server.MapPath("~/App_Data/logedUsers.txt");
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
                string users_log = File.ReadAllText(logpath);

                foreach (string user in users)
                {
                    string[] userData = user.Split(',');

                    if(userEmail=="admin@gmail.com" && userpassword == "12345")
                    {
                        Session["UserEmail"] = "admin@gmail.com";
                        lblMessage.Text = "Login seccessfully!";
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                        lblMessage.Visible = true;
                        Response.Redirect("Home2.aspx");
                        return;
                    }
                    else if (userEmail == userData[1] &&  userpassword == userData[2])
                    {


                        if (!File.Exists(logpath)) // location to file 
                        {
                            File.Create(logpath); //create a file if not exist
                        }
                        string UserData = $"{userData[0]},{userData[1]},{userData[2]},\n"; //formatting

                        File.AppendAllText(logpath, UserData); //add user data to the usersFile



                        lblMessage.Text = "Login seccessfully!";
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                        lblMessage.Visible = true;
                        Response.Redirect("Home.aspx");
                        return;
                    }
                }
            }

            lblMessage.Text = "Invalid username or password!";
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Visible = true;
        }
    }
}
