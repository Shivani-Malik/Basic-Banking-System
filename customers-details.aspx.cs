using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace banking_system
{
    public partial class customers_details : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CustomerDetails();
            }
        
        }
        protected void CustomerDetails()
        {
            string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Shivi\Documents\db_bank.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
            SqlConnection con = new SqlConnection(connectionString);
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from tb_customersDetails", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.HasRows==true)
                {
                    details.DataSource = dr;
                    details.DataBind();
                }

            }

        }

        protected void details_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = details.SelectedRow.Cells[0].Text;
            string name=details.SelectedRow.Cells[1].Text;
            string email = details.SelectedRow.Cells[2].Text;
            string balance = details.SelectedRow.Cells[3].Text;

            Response.Redirect("view-details.aspx?ID=" + id + "&Name=" + name + "& Email='" + email + "& Balance=" + balance);
            
        }

       

    }  

}