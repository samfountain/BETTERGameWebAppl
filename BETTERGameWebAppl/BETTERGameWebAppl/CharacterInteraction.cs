using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BETTERGameWebAppl
{
    public class CharacterInteraction
    {
        public SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["BetterGameDB"].ConnectionString);

        public Character getCurrentCharacter(string username)
        {
            DataTable dt = new DataTable();
            connection.Open();
            SqlCommand sqlCmd = new SqlCommand("SELECT * from userCharacter WHERE userName = @username "
                                                                            + "experience < @experience", connection);
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);

            sqlCmd.Parameters.AddWithValue("@username", username);
            sqlCmd.Parameters.AddWithValue("@experience", maxExperience());
            sqlDa.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Character c = new Character(username,
                                            dt.Rows[0]["type"].ToString(),
                                            dt.Rows[0]["characterName"].ToString(),
                                            Convert.ToInt32(dt.Rows[0]["experience"].ToString()));

                return c;

            }
            else
            {
                return null;
            }  
        }

        public int maxExperience()
        {
            return 11501;
        }

        public Dictionary<string,string> getLevelStep(int experience)
        {
            string level = "Level";
            string step = "Step";

            DataTable dt = new DataTable();
            connection.Open();
            SqlCommand sqlCmd = new SqlCommand("SELECT * from Step WHERE bracketStart < @experience "
                                                                   + "bracketEnd > @experience", connection);
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);
            
            sqlCmd.Parameters.AddWithValue("@experience", experience);
            sqlDa.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Dictionary<string, string> d = new Dictionary<string, string>()
                {
                    { level, dt.Rows[0]["levelId"].ToString()},
                    { step, dt.Rows[0]["stepId"].ToString()}
                };

                return d;
            }
            else
            {
                return null;
            }
        }

        public void updateExperience(Character c)
        {
            connection.Open();

            if (c.experience > maxExperience())
            {
                c.experience = maxExperience();
            }

            SqlCommand upd = new SqlCommand("UPDATE userCharacter SET experience = @experience "
                                            + "WHERE username = @username AND characterName = @characterName", connection);

            SqlDataAdapter updDa = new SqlDataAdapter(upd);


            upd.Parameters.AddWithValue("@username", c.userName);
            upd.Parameters.AddWithValue("@characterName", c.characterName);
            upd.Parameters.AddWithValue("@experience", c.experience);

            upd.ExecuteNonQuery();

        }
        public int exerciseBracketExp(int time)
        {
            DataTable dt = new DataTable();
            connection.Open();
            SqlCommand sqlCmd = new SqlCommand("SELECT experience from ExerciseBracket WHERE bracketStart < @time AND bracketEnd > @time", connection);

            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);

            sqlCmd.Parameters.AddWithValue("@time", time);
            sqlDa.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                return Convert.ToInt32(dt.Rows[0]["levelId"].ToString());
            }
            else
            {
                return 0;
            }
        }
    }
}