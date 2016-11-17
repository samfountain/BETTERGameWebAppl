using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Odbc;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;

namespace BETTERGameWebAppl
{
    public sealed class BetterGameMembershipProvider : MembershipProvider
    {
        public SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["BetterGameDB"].ConnectionString);

        public override string ApplicationName
        {
            get
            {
                throw new NotImplementedException();
            }

            set
            {
                throw new NotImplementedException();
            }
        }

        public override bool EnablePasswordReset
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        public override bool EnablePasswordRetrieval
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        public override int MaxInvalidPasswordAttempts
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        public override int MinRequiredNonAlphanumericCharacters
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        public override int MinRequiredPasswordLength
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        public override int PasswordAttemptWindow
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        public override MembershipPasswordFormat PasswordFormat
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        public override string PasswordStrengthRegularExpression
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        public override bool RequiresQuestionAndAnswer
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        public override bool RequiresUniqueEmail
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        public override bool ChangePassword(string username, string oldPassword, string newPassword)
        {
            throw new NotImplementedException();
        }

        public override bool ChangePasswordQuestionAndAnswer(string username, string password, string newPasswordQuestion, string newPasswordAnswer)
        {
            throw new NotImplementedException();
        }

        //******************************************************************************************************************************************
        public override MembershipUser CreateUser(string username,
                                                    string password,
                                                    string email,
                                                    string passwordQuestion,
                                                    string passwordAnswer,
                                                    bool isApproved,
                                                    object providerUserKey,
                                                    out MembershipCreateStatus status)
        {
            return this.CreateUser(username,
                                    password,
                                    email,
                                    passwordQuestion,
                                    passwordAnswer,
                                    isApproved,
                                    providerUserKey,
                                    "",
                                    "",
                                    "",
                                    "",
                                    out status
                                    );
        }

        //*****************************************************************************************************************************************
        public BetterGameMembershipUser CreateUser(string username,
                                                    string password,
                                                    string email,
                                                    string passwordQuestion,
                                                    string passwordAnswer,
                                                    bool isApproved,
                                                    object providerUserKey,
                                                    string firstName,
                                                    string lastName,
                                                    string parentEmail,
                                                    string country,
                                                    out MembershipCreateStatus status
                                                    )
        {

            DataTable dt = new DataTable();
            connection.Open();
            SqlCommand sqlCmd = new SqlCommand("SELECT * from UserPerson WHERE userName = @username", connection);
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);

            sqlCmd.Parameters.AddWithValue("@username", username);
            sqlDa.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                status = MembershipCreateStatus.DuplicateUserName;
                connection.Close();
                return null;
            }

            else
            {
                SqlCommand sqlIns = new SqlCommand("INSERT INTO UserPerson VALUES "
                                                   + "(@username, @password, @firstName, @lastName,@email, @country, @parentEmail",
                                                   connection);
                SqlDataAdapter sqlDaIns = new SqlDataAdapter(sqlIns);

                sqlIns.Parameters.AddWithValue("@username", username);
                sqlIns.Parameters.AddWithValue("@password", password);
                sqlIns.Parameters.AddWithValue("@firstName", firstName);
                sqlIns.Parameters.AddWithValue("@lastName", lastName);
                sqlIns.Parameters.AddWithValue("@email", email);
                sqlIns.Parameters.AddWithValue("@country", country);
                sqlIns.Parameters.AddWithValue("@parentEmail", parentEmail);

                sqlIns.ExecuteNonQuery();

                connection.Close();
                status = MembershipCreateStatus.Success;
                return null;

            }
        }

        public override bool DeleteUser(string username, bool deleteAllRelatedData)
        {
            throw new NotImplementedException();
        }
        
        public override MembershipUserCollection FindUsersByEmail(string emailToMatch, int pageIndex, int pageSize, out int totalRecords)
        {
            throw new NotImplementedException();
        }

        public override MembershipUserCollection FindUsersByName(string usernameToMatch, int pageIndex, int pageSize, out int totalRecords)
        {
            throw new NotImplementedException();
        }

        public override MembershipUserCollection GetAllUsers(int pageIndex, int pageSize, out int totalRecords)
        {
            throw new NotImplementedException();
        }

        //************************************************************************************************************************************
        public override int GetNumberOfUsersOnline()
        {
            throw new NotImplementedException();
        }

        public override string GetPassword(string username, string answer)
        {
            throw new NotImplementedException();
        }

        public override MembershipUser GetUser(object providerUserKey, bool userIsOnline)
        {
            throw new NotImplementedException();
        }

        //***********************************************************************************************************************************
        public override MembershipUser GetUser(string username, bool userIsOnline)
        {
            return this.bGetUser(username, userIsOnline);
        }

        public BetterGameMembershipUser bGetUser(string username, bool userIsOnline)
        {
            DataTable dt = new DataTable();
            connection.Open();
            SqlCommand sqlCmd = new SqlCommand("SELECT * from UserPerson WHERE userName = @username", connection);
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);

            sqlCmd.Parameters.AddWithValue("@username", username);
            sqlDa.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                BetterGameMembershipUser user = new BetterGameMembershipUser("BetterGameMembershipProvider",
                                                                             dt.Rows[0]["userName"].ToString(),
                                                                             null,
                                                                             dt.Rows[0]["email"].ToString(),
                                                                             "",
                                                                             "",
                                                                             true,
                                                                             false,
                                                                             DateTime.MinValue,
                                                                             DateTime.MinValue,
                                                                             DateTime.MinValue,
                                                                             DateTime.MinValue,
                                                                             DateTime.MinValue,
                                                                             dt.Rows[0]["firstName"].ToString(),
                                                                             dt.Rows[0]["lastName"].ToString(),
                                                                             dt.Rows[0]["country"].ToString(),
                                                                             dt.Rows[0]["parentEmail"].ToString());

                connection.Close();
                return user;
            }
            else
            {
                connection.Close();
                return null;
            }
        }

        //***********************************************************************************************************************************
        public override string GetUserNameByEmail(string email)
        {
            throw new NotImplementedException();
        }

        public override string ResetPassword(string username, string answer)
        {
            throw new NotImplementedException();
        }

        public override bool UnlockUser(string userName)
        {
            throw new NotImplementedException();
        }
        
        public override void UpdateUser(MembershipUser user)
        {
            this.bUpdateUser((BetterGameMembershipUser) user);
        }

        public void bUpdateUser(BetterGameMembershipUser user)
        {
            connection.Open();
            SqlCommand sqlCmd = new SqlCommand("UPDATE UserPerson SET "
                                                + "firstName = @firstName,"
                                                + "lastName = @lastName,"
                                                + "email = @email,"
                                                + "parentEmail = @parentEmail"
                                                + " WHERE userName = @userName", connection);
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);
            

            sqlCmd.Parameters.AddWithValue("@username", user.UserName);
            sqlCmd.Parameters.AddWithValue("@firstName", user.firstName);
            sqlCmd.Parameters.AddWithValue("@lastName", user.lastName);
            sqlCmd.Parameters.AddWithValue("@email", user.Email);
            sqlCmd.Parameters.AddWithValue("@parentEmail", user.parentEmail);

            sqlCmd.ExecuteNonQuery();

            connection.Close();
        }

        //***********************************************************************************************************************************
        public override bool ValidateUser(string username, string password)
        {
            DataTable dt = new DataTable();
            connection.Open();
            SqlCommand sqlCmd = new SqlCommand("SELECT userName,password from UserPerson WHERE userName = @username", connection);
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);

            sqlCmd.Parameters.AddWithValue("@username", username);
            sqlDa.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                if(password == dt.Rows[0]["password"].ToString())
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
            else
            {
                connection.Close();
                return false;
                
            } 
        }
    }
}