using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace WebApplication6
{
    public partial class AllBooks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            addBookByAdmin();
        }
        protected void addBookByAdmin()
        {
            string FilePath = Server.MapPath("App_Data/Books.txt");

            string[] Books = File.ReadAllLines(FilePath);

            foreach (string Book in Books)
            {
                string[] book = Book.Split(',');
                bookTable.InnerHtml += $"<tr><td>{book[0]}</td><td>{book[1]}</td><td>{book[2]}</td><td>{book[3]}</td></tr>";

            }


        }


    }
}