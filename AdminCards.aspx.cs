using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class AdminCards : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddBook.aspx");
        }

        protected void allBooksAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("AllBooks.aspx");
        }

        protected void editBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditBook.aspx");
        }
    }
}