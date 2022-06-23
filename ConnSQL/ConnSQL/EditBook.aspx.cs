using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConnSQL
{
    public partial class EditBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var myServer = Session["server"] as String;

            if (myServer == null)
            {
                Response.Redirect("Main.aspx");
            }
            else
            {


                if (!IsPostBack)
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

                        string Query = "select * from library where ID='" + Request.QueryString.Get("id") + "';";
                        MySqlConnection MyConn2 = new MySqlConnection(MyConnection2);
                        MySqlCommand MyCommand2 = new MySqlCommand(Query, MyConn2);
                        MySqlDataReader MyReader2;
                        MyConn2.Open();
                        MyReader2 = MyCommand2.ExecuteReader();
                        lInfo.Text = "Data Deleted";
                        while (MyReader2.Read())
                        {
                            tbAuthor.Text = MyReader2.GetString("AUTHORS");
                            tbTitle.Text = MyReader2.GetString("Title");
                            tbDate.Text = MyReader2.GetString("Release_date");
                            tbISBN.Text = MyReader2.GetString("ISBN");
                            tbFormat.Text = MyReader2.GetString("Format");
                            tbPages.Text = MyReader2.GetString("Pages");
                            tbDesc.Text = MyReader2.GetString("Description");
                        }
                        MyConn2.Close();
                    }
                    catch (Exception ex)
                    {
                        lInfo.Text = ex.Message;
                    }
                }
            }
        }

        protected void bSave_Click(object sender, EventArgs e)
        {
            var myServer = Session["server"] as String;
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
 
                string Query = "UPDATE library set AUTHORS='" + tbAuthor.Text + "',Title='" + tbTitle.Text + "',Release_date='" + tbDate.Text + "',ISBN='" + tbISBN.Text + "',Format='" + tbFormat.Text + "',Pages='" + tbPages.Text + "',Description='" + tbDesc.Text + "' where ID='" + Request.QueryString.Get("id") + "';";

                MySqlConnection MyConn2 = new MySqlConnection(MyConnection2);
                MySqlCommand MyCommand2 = new MySqlCommand(Query, MyConn2);
                MySqlDataReader MyReader2;
                MyConn2.Open();
                MyReader2 = MyCommand2.ExecuteReader();
                while (MyReader2.Read())
                {
                }
                MyConn2.Close();//Connection closed here  
                Response.Redirect("AllBooks.aspx");
            }
            catch (Exception ex)
            {
                lInfo.Text = ex.Message;
            }
        }
    }
}