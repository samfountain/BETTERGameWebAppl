using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BETTERGameWebAppl
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            DataTable dt = new DataTable();
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["BetterGameDB"].ConnectionString);
            connection.Open();
            SqlCommand sqlCmd = new SqlCommand("SELECT * from UserPerson WHERE userName = @username", connection);
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);

            sqlCmd.Parameters.AddWithValue("@username", "Sherdow");
            sqlDa.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Name.Text = dt.Rows[0]["firstName"].ToString() + " " + dt.Rows[0]["lastName"].ToString(); //Where ColumnName is the Field from the DB that you want to display
                
            }
            connection.Close();
        }
        
    }
    
}