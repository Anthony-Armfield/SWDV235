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
    public partial class about : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalcs_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/calcs.aspx");
        }

        protected void btnContact_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/contact.aspx");
        }

        protected void btnMailingList_Click(object sender, EventArgs e)
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
                comm = new SqlCommand("EXEC spInsertDBMailingList @MailingEmailAddress, @MailingCustomerFName, @MailingCustomerLName, @DateSignedUp, @AssignedEmployee", conn);
                comm.Parameters.Add("@MailingEmailAddress", System.Data.SqlDbType.VarChar, 100);
                comm.Parameters["@MailingEmailAddress"].Value = txtEmail.Text;
                comm.Parameters.Add("@MailingCustomerFName", System.Data.SqlDbType.VarChar, 50);
                comm.Parameters["@MailingCustomerFName"].Value = txtFirstName.Text;
                comm.Parameters.Add("@MailingCustomerLName", System.Data.SqlDbType.VarChar, 50);
                comm.Parameters["@MailingCustomerLName"].Value = txtLastName.Text;
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
                    lblSuccess.Text = "Thank you for signing up for our mailing list. You should see an email shortly.";
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