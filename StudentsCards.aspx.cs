using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class StudentsCards : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void allBooks_Click(object sender, EventArgs e)
        {

            Response.Redirect("AllBooks.aspx");

        }

        protected void allRooms_Click(object sender, EventArgs e)
        {
            Response.Redirect("AllRooms.aspx");
        }
    }
}