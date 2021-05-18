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
    public partial class transfer_money : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Shivi\Documents\db_bank.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
            SqlConnection con = new SqlConnection(connectionString);
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from tb_customersDetails", con);
                
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                ddl2.DataTextField = ds.Tables[0].Columns["Name"].ToString();
                ddl2.DataSource = ds.Tables[0];
                ddl2.DataBind();
                Name.Text = Request.QueryString["Name"].ToString();
            }
         }

        protected void transfer_Click(object sender, EventArgs e)
        {



            string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Shivi\Documents\db_bank.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
            SqlConnection con = new SqlConnection(connectionString);
            {
                con.Open();
                string Sender = Convert.ToString(Name.Text);
                string Receiver = Convert.ToString(ddl2.SelectedValue);

                int Balance = Convert.ToInt32(bal.Text);
                string now = DateTime.Now.ToString();
                if (Receiver == Sender)
                {
                    label1.Text = "*Sender and Receiver is same";
                   
                }
                else if(Receiver =="")
                {
                    label1.Text="*Please select name";
                }

                else
                {
                    
                    SqlCommand cmd = new SqlCommand("insert into [tb_transaction-history]values('" + Sender + "', '" + Receiver + "'," + Balance + ",'" + now + "')", con);

                    cmd.ExecuteNonQuery();
                    con.Close();

                    SqlCommand cm1 = new SqlCommand("update tb_customersDetails SET Balance=Balance-'" + Balance + "' where Name='" + Sender + "'", con);
                    con.Open();
                    cm1.ExecuteNonQuery();
                    con.Close();

                    SqlCommand cm2 = new SqlCommand("update tb_customersDetails SET Balance=Balance+'" + Balance + "' where Name='" + Receiver + "'", con);
                    con.Open();
                    cm2.ExecuteNonQuery();
                    con.Close();
                    
                    Response.Redirect("customers-details.aspx");
                }
            }
            
            

        }
  }
}