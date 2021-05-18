using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace banking_system
{
    public partial class view_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            userDetail();
           
        }
        public void userDetail()
        {
            string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Shivi\Documents\db_bank.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
            SqlConnection con = new SqlConnection(connectionString);
            {
                con.Open();
                 SqlCommand cmd = new SqlCommand("select * from tb_customersDetails where ID="+ Request.QueryString["ID"], con);
                 SqlDataReader dr = cmd.ExecuteReader();
                
                if (dr.Read())
                {
                    ID.Text = dr[0].ToString();
                    Name.Text = dr[1].ToString();
                    Email.Text = dr[2].ToString();
                    Balance.Text = dr[3].ToString();
                    dr.Close();
                    con.Close();
                }

            }
        }

        protected void transferMoney_Click(object sender, EventArgs e)

        {
            string name = Name.Text;
            Response.Redirect("transfer-money.aspx?Name=" +name);
           
        }

    }
}