using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace banking_system
{
    public partial class transaction_history : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                History();
            }
        }

        protected void History()
        {
            string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Shivi\Documents\db_bank.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
            SqlConnection con = new SqlConnection(connectionString);
            {
                
                con.Open();
                
                SqlCommand cmd = new SqlCommand("select * from [tb_transaction-history]", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    history.DataSource = dr;
                    history.DataBind();
                }

            }

        }
    }
}