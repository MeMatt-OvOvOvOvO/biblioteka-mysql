using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConnSQL
{
    public partial class AllBooks : System.Web.UI.Page
    {
        DataTable table = new DataTable();
        DataRow rows;
        private Button btnAdd = new Button();

        protected void Page_Load(object sender, EventArgs e)
        {
            var myServer = Session["server"] as String;

            if (myServer == null)
            {
                Response.Redirect("Main.aspx");
            }
            else
            {
                var myPort = Session["port"] as String;
                var myDbName = Session["dbname"] as String;
                var myUser = Session["user"] as String;
                var myPass = Session["pass"] as String;


                try
                {
                    string MyConnection2 =
                       "Server=" + myServer + ";" +
                       "Port=" + myPort + ";" +
                       "Database=" + myDbName + ";" +
                       "User=" + myUser + ";" +
                       "Password=" + myPass + ";";
 
                    if(Request.QueryString.Get("search") == "searchsearch")
                    {
                        string[] dbData = { "Title", "Release_date", "ISBN", "Format", "Pages", "Description" };
                        string[] dateFromLink = { "title", "date", "isbn", "format", "pages", "desc" };
                        string Query = "SELECT * FROM library WHERE ";
                        bool addOr = false;
                        
                        if (!String.IsNullOrEmpty(Request.QueryString.Get("author")))
                        {
                            Query += "AUTHORS LIKE '%" + Request.QueryString.Get("author") + "%' ";
                            addOr = true;
                        }
                    
                        for (var a = 0; a <= 5; a++)
                        {
                            var cos = dbData[a];
                            var cos1 = dateFromLink[a];
                            if (!String.IsNullOrEmpty(Request.QueryString.Get(cos1)))
                            {
                                if (addOr) Query += " OR ";
                                Query += " " + cos + " LIKE '%" + Request.QueryString.Get(cos1) + "%' ";
                                addOr = true;
                            }
                        }

                        Query += ";";
                        lInfo.Text = Query;
                        MySqlConnection MyConn2 = new MySqlConnection(MyConnection2);
                        MySqlCommand MyCommand2 = new MySqlCommand(Query, MyConn2);
                        MySqlDataAdapter MyAdapter = new MySqlDataAdapter();
                        MyAdapter.SelectCommand = MyCommand2;
                        MyConn2.Open();
                        MySqlDataReader reader = MyCommand2.ExecuteReader();

                        rows = table.NewRow();
                        table.Columns.Add("ID", typeof(string));
                        table.Columns.Add("AUTHORS", typeof(string));
                        table.Columns.Add("Title", typeof(string));
                        table.Columns.Add("Release_date", typeof(string));
                        table.Columns.Add("ISBN", typeof(string));
                        table.Columns.Add("Format", typeof(string));
                        table.Columns.Add("Pages", typeof(string));
                        table.Columns.Add("Description", typeof(string));

                        while (reader.Read())
                        {
                            rows = table.NewRow();
                            rows["ID"] = $"{reader.GetString("ID")}";
                            rows["AUTHORS"] = $"{reader.GetString("AUTHORS")}";
                            rows["Title"] = $"{reader.GetString("Title")}";
                            rows["Release_date"] = $"{reader.GetString("Release_date")}";
                            rows["ISBN"] = $"{reader.GetString("ISBN")}";
                            rows["Format"] = $"{reader.GetString("Format")}";
                            rows["Pages"] = $"{reader.GetString("Pages")}";
                            rows["Description"] = $"{reader.GetString("Description")}";
                            table.Rows.Add(rows);
                            gridvieww.DataSource = table;
                            gridvieww.DataBind();
                        }
                    }
                    else
                    {
                        string Query = "select * from library;";
                        MySqlConnection MyConn2 = new MySqlConnection(MyConnection2);
                        MySqlCommand MyCommand2 = new MySqlCommand(Query, MyConn2);
                        MySqlDataAdapter MyAdapter = new MySqlDataAdapter();
                        MyAdapter.SelectCommand = MyCommand2;
                        MyConn2.Open();
                        MySqlDataReader reader = MyCommand2.ExecuteReader();

                        rows = table.NewRow();
                        table.Columns.Add("ID", typeof(string));
                        table.Columns.Add("AUTHORS", typeof(string));
                        table.Columns.Add("Title", typeof(string));
                        table.Columns.Add("Release_date", typeof(string));
                        table.Columns.Add("ISBN", typeof(string));
                        table.Columns.Add("Format", typeof(string));
                        table.Columns.Add("Pages", typeof(string));
                        table.Columns.Add("Description", typeof(string));




                        while (reader.Read())
                        {
                            rows = table.NewRow();
                            rows["ID"] = $"{reader.GetString("ID")}";
                            rows["AUTHORS"] = $"{reader.GetString("AUTHORS")}";
                            rows["Title"] = $"{reader.GetString("Title")}";
                            rows["Release_date"] = $"{reader.GetString("Release_date")}";
                            rows["ISBN"] = $"{reader.GetString("ISBN")}";
                            rows["Format"] = $"{reader.GetString("Format")}";
                            rows["Pages"] = $"{reader.GetString("Pages")}";
                            rows["Description"] = $"{reader.GetString("Description")}";
                            table.Rows.Add(rows);
                            gridvieww.DataSource = table;
                            gridvieww.DataBind();
                        }
                    }
                }
                catch (Exception ex)
                {
                    //lInfo.Text = ex.Message;
                }

            }

        }

        protected void gridvieww_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            var myServer = Session["server"] as String;
            var myPort = Session["port"] as String;
            var myDbName = Session["dbname"] as String;
            var myUser = Session["user"] as String;
            var myPass = Session["pass"] as String;

            string MyConnection2 =
                   "Server=" + myServer + ";" +
                   "Port=" + myPort + ";" +
                   "Database=" + myDbName + ";" +
                   "User=" + myUser + ";" +
                   "Password=" + myPass + ";";

            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow clickedRow = gridvieww.Rows[index];
            String id = clickedRow.Cells[2].Text;
            if (e.CommandName == "editBook")
            {
                Response.Redirect("EditBook.aspx?id=" + id.ToString());
            }
            else if (e.CommandName == "deleteBook")
            {
                try
                {
                    string Query = "delete from library where ID='" + id + "';";
                    MySqlConnection MyConn2 = new MySqlConnection(MyConnection2);
                    MySqlCommand MyCommand2 = new MySqlCommand(Query, MyConn2);
                    MySqlDataReader MyReader2;
                    MyConn2.Open();
                    MyReader2 = MyCommand2.ExecuteReader();
                    lInfo.Text = "Data Deleted";
                    while (MyReader2.Read())
                    {
                    }
                    MyConn2.Close();
                    Response.Redirect(Request.RawUrl);
                }
                catch (Exception ex)
                {
                    lInfo.Text = ex.Message;
                }

            }
        }



        protected void bAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddBook.aspx");
        }

        protected void bSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search.aspx");
        }
    }
}