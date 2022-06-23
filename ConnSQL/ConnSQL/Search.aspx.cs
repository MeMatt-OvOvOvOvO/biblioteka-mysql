using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConnSQL
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var myServer = Session["server"] as String;

            if (myServer == null)
            {
                Response.Redirect("Main.aspx");
            }
        }

        protected void bSearch_Click(object sender, EventArgs e)
        {
            if (tbAuthor.Text != "" || tbTitle.Text != "" || tbDate.Text != "" || tbISBN.Text != "" || tbFormat.Text != "" || tbPages.Text != "" || tbDesc.Text != "")
            {
                object[] arrrrrr = new object[] { tbAuthor.Text, tbTitle.Text, tbDate.Text, tbISBN.Text, tbFormat.Text, tbPages.Text, tbDesc.Text };
                string myString = "AllBooks.aspx?search=searchsearch&author=";
                myString += arrrrrr[0] + "&title=" + arrrrrr[1] + "&date=" + arrrrrr[2];
                myString += "&isbn=" + arrrrrr[3] + "&format=" + arrrrrr[4] + "&pages=";
                myString += arrrrrr[5] + "&desc=" + arrrrrr[6];
                Response.Redirect(String.Format(myString));
            }
            else
            {
                Response.Redirect("AllBooks.aspx");
            }
        }
    }
}