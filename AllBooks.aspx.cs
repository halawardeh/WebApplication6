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
            var FilePath = Server.MapPath("App_Data/Books.txt");

            string[] Books = File.ReadAllLines(FilePath);

            foreach (string Book in Books)
            {
                
                string[] book = Book.Split(',');
                bookTable.InnerHtml += $"<tr><td>{book[0]}</td><td>{book[1]}</td><td>{book[2]}</td><td>{book[3]}</td></tr>";

            }

            //var FilePath2 = Server.MapPath("App_Data/Books.txt");

        }

        protected void search_Click(object sender, EventArgs e)
        {



            string filePath = Server.MapPath("App_Data/Books.txt");
            var Bookid = SearchedBookId.Text;

            if (File.Exists(filePath))
            {
                string[] fileContent = File.ReadAllLines(filePath);
                foreach (var line in fileContent)
                {
                    string[] book = line.Split(',');
                    if (book[0] == Bookid)
                    {
                        SearchedBook.InnerHtml = $"<tr><td>{book[0]}</td><td>{book[1]}</td><td>{book[2]}</td><td>{book[3]}</td></tr>";
                        return;
                    }

                }
            }
        }
    }
}