using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConnSQL
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var myServer = Session["server"] as String;

            if (myServer == null)
            {
                Response.Redirect("Main.aspx");
            }
        }

        protected void bSave_Click(object sender, EventArgs e)
        {
            var login = tbLogin.Text;
            var pass = tbPassword.Text;
            var email = tbEmail.Text;

            var myServer = Session["server"] as String;
            var myPort = Session["port"] as String;
            var myDbName = Session["dbname"] as String;
            var myUser = Session["user"] as String;
            var myPass = Session["pass"] as String;

            if (login == "" || pass == "" || email == "")
            {
                lInfo.Text = "Wszystkie pola nie powinny byc puste";
            }
            else
            {
                try
                {  
                    string MyConnection2 =
                    "Server=" + myServer + ";" +
                    "Port=" + myPort + ";" +
                    "Database=" + myDbName + ";" +
                    "User=" + myUser + ";" +
                    "Password=" + myPass + ";";

                    string Query = "INSERT INTO users (mail, login, haslo) VALUES ('" + email + "', '" + login + "', PASSWORD('" + pass + "'))";
                    MySqlConnection MyConn2 = new MySqlConnection(MyConnection2);
                    MySqlCommand MyCommand2 = new MySqlCommand(Query, MyConn2);
                    MySqlDataReader MyReader2;
                    MyConn2.Open();
                    MyReader2 = MyCommand2.ExecuteReader();
                    lInfo.Text = "Save Data";
                    while (MyReader2.Read())
                    {
                    }
                    MyConn2.Close();
                }
                catch (Exception ex)
                {
                    lInfo.Text = ex.Message;
                }
            }
        }

        protected void bBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}