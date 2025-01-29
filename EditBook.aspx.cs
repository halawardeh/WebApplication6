using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class EditBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        protected void updateBook_Click(object sender, EventArgs e)
        {
            string Bookid = bookId.Text;
            string BookName = bookName.Text;
            string BookKind = bookType.Text;
            string BookLevel = bookLevel.Text;

            String filePath = Server.MapPath("~/App_Data/Books.txt");

            var orgbooks = File.ReadAllLines(filePath);

            if (String.IsNullOrEmpty(Bookid) || String.IsNullOrEmpty(BookName) || String.IsNullOrEmpty(BookKind) || String.IsNullOrEmpty(BookLevel))
            {
                lblMessage.Text = "All Feilds Are Required";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Visible = true;
                return;
            }

           
            else
            {
                var books = File.ReadAllLines(filePath);
                for (var i=0; i<books.Length; i++)
                {
                    string[] bookData = books[i].Split(',');
                    if (Bookid == bookData[0])
                    {
                        bookData[1] = BookName;
                        bookData[2] = BookKind;
                        bookData[3] = BookLevel;
                        books[i] = $"{bookData[0]},{bookData[1]},{bookData[2]},{bookData[3]}";
                        break;
                    }
                }

                if(orgbooks.SequenceEqual(books))
                {
                    lblMessage.Text = "The Book is not Exist or you did'nt Change any attribute";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Visible = true;
                    return;
                }


                File.WriteAllLines(filePath, books);

                lblMessage.Text = "The Book is Updated seccessfully!";
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Visible = true;
                Response.Redirect("AllBooks.aspx");
                return;
            }


        }

    
}
}