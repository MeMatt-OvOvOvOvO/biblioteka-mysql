using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConnSQL
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void bConnect_Click(object sender, EventArgs e)
        {
            string myconnection =
                "Server=" + tbServer.Text + ";" +
                "Port=" + tbPort.Text + ";" +
                "Database=" + tbDbName.Text + ";" +
                "User=" + tbUser.Text + ";" +
                "Password=" + tbPass.Text + ";";
            MySqlConnection connection = new MySqlConnection(myconnection);
            try
            {
                lInfo.Text = "Connecting 2...";
                connection.Open();
                lInfo.Text = "Connected";

                Session["server"] = tbServer.Text;
                Session["port"] = tbPort.Text;
                Session["dbname"] = tbDbName.Text;
                Session["user"] = tbUser.Text;
                Session["pass"] = tbPass.Text;

                Response.Redirect("Login.aspx");
            }
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                lInfo.Text = "Error";
            }
        }

        protected void tbServer_TextChanged(object sender, EventArgs e)
        {

        }
    }
}