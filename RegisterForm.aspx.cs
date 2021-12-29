using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace employee
{
    public partial class RegisterForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            //Get connection string from web.config file 
            String strCon = System.Configuration.ConfigurationManager.ConnectionStrings["Employees"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file 
            SqlConnection con = new SqlConnection(strCon);
            // SlqCommand
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SP_reg"; // Store procediure name
            cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = txtname.Text.Trim();
            cmd.Parameters.Add("@Phone", SqlDbType.VarChar).Value = txtphoneno.Text.Trim();
            cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = txtemail.Text.Trim();
            cmd.Parameters.Add("@DateOfBirth", SqlDbType.VarChar).Value = txtdob.Text.Trim();
            cmd.Parameters.Add("@Address", SqlDbType.VarChar).Value = txtaddress.Text.Trim();
            cmd.Connection = con;
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                lboutput.Text = "Record inserted successfully";

            }
            catch (Exception ex)
            {
                throw ex;
            }

            finally

            {

                con.Close();

                con.Dispose();

            }




        }
    }
}