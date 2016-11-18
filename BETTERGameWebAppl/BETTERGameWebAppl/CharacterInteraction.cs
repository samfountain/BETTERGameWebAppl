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
                                                                            + "AND experience < @experience", connection);
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
                connection.Close();
                return c;

            }
            else
            {
                connection.Close();
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
            SqlCommand sqlCmd = new SqlCommand("SELECT * from Step WHERE bracketStart <= @experience "
                                                                   + "AND bracketEnd >= @experience", connection);
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

                connection.Close();
                return d;
            }
            else
            {
                connection.Close();
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
            connection.Close();

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
                connection.Close();
                return Convert.ToInt32(dt.Rows[0]["experience"].ToString());
            }
            else
            {
                connection.Close();
                return 0;
            }
        }

        public bool exerciseSubmittedToday(Character c)
        {
            DataTable dt = new DataTable();
            connection.Open();
            SqlCommand sqlCmd = new SqlCommand("SELECT exDate from Exercise WHERE exDate = @date AND userName = @userName AND characterName = @characterName", connection);

            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);

            sqlCmd.Parameters.AddWithValue("@date", DateTime.Today);
            sqlCmd.Parameters.AddWithValue("@userName", c.userName);
            sqlCmd.Parameters.AddWithValue("@characterName", c.characterName);
            sqlDa.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                connection.Close();
                return true;
            }
            else
            {
                connection.Close();
                return false;
            }
        }

        public void createCharacter(string characterName, string userName, string type)
        {
            connection.Open();
            

            SqlCommand ins = new SqlCommand("INSERT INTO userCharacter VALUES"
                                            + "(@username,@characterName,@type,0)", connection);

            SqlDataAdapter updDa = new SqlDataAdapter(ins);


            ins.Parameters.AddWithValue("@username", userName);
            ins.Parameters.AddWithValue("@characterName", characterName);
            ins.Parameters.AddWithValue("@type", type);

            ins.ExecuteNonQuery();
            connection.Close();
        }

        public void insertExercise(string userName, string characterName, int time, string desc)
        {
            connection.Open();


            SqlCommand ins = new SqlCommand("INSERT INTO Exercise VALUES"
                                            + "(@username,@characterName,@date,@time,@desc)", connection);

            SqlDataAdapter updDa = new SqlDataAdapter(ins);
            
            ins.Parameters.AddWithValue("@username", userName);
            ins.Parameters.AddWithValue("@characterName", characterName);
            ins.Parameters.AddWithValue("@date", DateTime.Today);
            ins.Parameters.AddWithValue("@time", time);
            ins.Parameters.AddWithValue("@desc", desc);

            ins.ExecuteNonQuery();
            connection.Close();

        }
        
    }
}