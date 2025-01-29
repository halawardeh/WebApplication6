using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class AddBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
                           
     
        protected void AddBook_Click(object sender, EventArgs e)
        {
            string Bookid = ID.Text;
            string BookName = bookName.Text;
            string BookKind = bookKind.Text;
            string BookLevel = bookLevel.Text;

            String filePath = Server.MapPath("~/App_Data/Books.txt");



            if (String.IsNullOrEmpty(Bookid) || String.IsNullOrEmpty(BookName) || String.IsNullOrEmpty(BookKind) || String.IsNullOrEmpty(BookLevel))
            {
                lblMessage.Text = "All Feilds Are Required";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Visible = true;
                return;
            }

            else
            {
                string[] users = File.ReadAllLines(filePath);
                foreach (string user in users)
                {
                    string[] userData = user.Split(',');
                    if (Bookid == userData[0])
                    {
                        lblMessage.Text = "The Book is already Exist";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                        lblMessage.Visible = true;
                        return;
                    }
                }
            }
            string BookData = $"{Bookid},{BookName},{BookKind},{BookLevel}\n"; //formatting

            File.AppendAllText(filePath, BookData); //add books data to the booksFile
            

            lblMessage.Text = "The Book is added seccessfully!";
            lblMessage.ForeColor = System.Drawing.Color.Green;
            lblMessage.Visible = true;
            Response.Redirect("AdminCards.aspx");
        }




    }
    }
