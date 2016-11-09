﻿using System;
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
    public sealed class BetterGameMembershiProvider : MembershipProvider
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
            
            //write create user logic here, good example from website : https://msdn.microsoft.com/en-us/library/ms366730.aspx

            status = MembershipCreateStatus.Success;
            return null;
        }

        public override bool DeleteUser(string username, bool deleteAllRelatedData)
        {
            throw new NotImplementedException();
        }

        //****************************************************************************************************************************************
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
            throw new NotImplementedException();
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

        //***********************************************************************************************************************************
        public override void UpdateUser(MembershipUser user)
        {
            //see example at website : https://msdn.microsoft.com/en-us/library/ms366730.aspx

            throw new NotImplementedException();
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
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }
    }
}