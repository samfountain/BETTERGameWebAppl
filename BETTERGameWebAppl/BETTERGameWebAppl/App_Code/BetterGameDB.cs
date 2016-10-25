using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;


    [DataObject(true)]
    public static class BetterGameDB
    {
    private static string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings
            ["BetterGameDB"].ConnectionString;

    }

    [DataObjectMethod(DataObjectMethodType.Select)]
        public static string getProfileDetails(string _user)
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            string sel = "SELECT * " + "FROM UserPerson " + "WHERE userName = 'Sherdow'";
            SqlCommand com = new SqlCommand(sel, con);
            con.Open();
            SqlDataReader dr = com.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
            return dr.ToString();
        }
    }

    
