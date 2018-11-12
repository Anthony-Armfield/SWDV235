using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace SussixCalcs
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnContact_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                int n;
                n = new Random().Next(1, 3);
                // Code that uses the data entered by the user
                // Define data objects
                SqlConnection conn;
                SqlCommand comm;
                // Read the connection string from Web.config
                string connectionString =
                    ConfigurationManager.ConnectionStrings[
                    "sussixCalcs"].ConnectionString;
                // Initialize connection
                conn = new SqlConnection(connectionString);
                // Create command 
                comm = new SqlCommand("EXEC spInsertDBCustomers @CustomerEmail, @CustomerFName, @CustomerLName, @CustomerComment, @DateSignedUp, @AssignedEmployee", conn);
                comm.Parameters.Add("@CustomerEmail", System.Data.SqlDbType.VarChar, 100);
                comm.Parameters["@CustomerEmail"].Value = txtEmail.Text;
                comm.Parameters.Add("@CustomerFName", System.Data.SqlDbType.VarChar, 50);
                comm.Parameters["@CustomerFName"].Value = txtFirstName.Text;
                comm.Parameters.Add("@CustomerLName", System.Data.SqlDbType.VarChar, 50);
                comm.Parameters["@CustomerLName"].Value = txtLastName.Text;
                comm.Parameters.Add("@CustomerComment", System.Data.SqlDbType.VarChar, 255);
                comm.Parameters["@CustomerComment"].Value = txtComment.Text;
                comm.Parameters.Add("@DateSignedUp", System.Data.SqlDbType.Date);
                comm.Parameters["@DateSignedUp"].Value = DateTime.Now;
                comm.Parameters.Add("@AssignedEmployee", System.Data.SqlDbType.Int);
                comm.Parameters["@AssignedEmployee"].Value = n;

                // Enclose database code in Try-Catch-Finally
                try
                {
                    // Open the connection
                    conn.Open();
                    // Execute the command
                    comm.ExecuteNonQuery();
                    // Reload page if the query executed successfully
                    lblSuccess.Text = "Thank you for contacting us! Someone will be in contact shortly.";
                }
                catch (SqlException ex)
                {
                    // Display error message
                    dbErrorMessage.Text =
                       "Error submitting the data!" + ex.Message.ToString();

                }
                finally
                {
                    // Close the connection
                    conn.Close();
                }
            }
        }
    }
}