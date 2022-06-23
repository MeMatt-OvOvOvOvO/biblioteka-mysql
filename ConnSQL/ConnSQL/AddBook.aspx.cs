using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConnSQL
{
    public partial class AddBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var myServer = Session["server"] as String;

            if (myServer == null)
            {
                Response.Redirect("Main.aspx");
            }
        }

        protected void bAdd_Click(object sender, EventArgs e)
        {
            var author = tbAuthor.Text;
            var title = tbTitle.Text;
            var date = tbDate.Text;
            var isbn = tbISBN.Text;
            var format = tbFormat.Text;
            var pages = tbPages.Text;
            var desc = tbDesc.Text;

            if (author == "" || title == "" || date == "" || isbn == "" || format == "" || pages == "" || desc == "") 
            {
                lInfo.Text = "wypelnij wszystkie pola";
            }
            else
            {
                try
                {
                    string MyConnection2 = "datasource=localhost;port=3306;username=root;database=library";
                    string Query = "INSERT INTO library (AUTHORS, Title, Release_date, ISBN, Format, Pages, Description) VALUES ('" + author + "', '" + title + "', '" + date + "', '" + isbn + "', '" + format + "', '" + pages + "', '" + desc + "')";
                    MySqlConnection MyConn2 = new MySqlConnection(MyConnection2);
                    MySqlCommand MyCommand2 = new MySqlCommand(Query, MyConn2);
                    MySqlDataReader MyReader2;
                    MyConn2.Open();
                    MyReader2 = MyCommand2.ExecuteReader();
                    lInfo.Text = "Save Data";
                    MyConn2.Close();
                    Response.Redirect("AllBooks.aspx");
                }
                catch (Exception ex)
                {
                    lInfo.Text = ex.Message;
                }
            }
        }
    }
}