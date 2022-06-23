using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConnSQL
{
    public partial class page2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var myServer = Session["server"] as String;

            if (myServer == null)
            {
                Response.Redirect("Main.aspx");
            }
            
        }

        protected void bRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
        MySqlCommand cmd;
        MySqlConnection con;
        MySqlDataReader dr;
        protected void bLogin_Click(object sender, EventArgs e)
        {
            var myServer = Session["server"] as String;
            var myPort = Session["port"] as String;
            var myDbName = Session["dbname"] as String;
            var myUser = Session["user"] as String;
            var myPass = Session["pass"] as String;

            try
            {
                con = new MySqlConnection("Server=" + myServer + ";" +
                "Port=" + myPort + ";" +
                "Database=" + myDbName + ";" +
                "User=" + myUser + ";" +
                "Password=" + myPass + ";");

                cmd = new MySqlCommand();
                con.Open();
                cmd.Connection = con;


                cmd.CommandText = "select mail,login,haslo from users WHERE mail ='" + tbMail.Text + "' AND haslo = PASSWORD('" + tbPass.Text + "')";

                dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    lInfo.Text = "Login sucess";
                    Response.Redirect("AllBooks.aspx");
                }
                else
                {
                    lInfo.Text = "Invalid Login please check mail and password";
                }
                con.Close();
            }
            catch (Exception ex)
            {
                lInfo.Text = ex.Message;
            }





        }
    }
}