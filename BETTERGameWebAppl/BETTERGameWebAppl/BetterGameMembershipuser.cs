using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;

namespace BETTERGameWebAppl
{
    public sealed class BetterGameMembershipUser : MembershipUser
    {
        private string _firstName;
        private string _CustomerID;

        public string firstName
        {
            get { return _firstName; }
            set { _firstName = value; }
        }

        public string CustomerID
        {
            get { return _CustomerID; }
            set { _CustomerID = value; }
        }

        public BetterGameMembershipUser(string providername,
                                        string username,
                                        object providerUserKey,
                                        string email,
                                        string passwordQuestion,
                                        string comment,
                                        bool isApproved,
                                        bool isLockedOut,
                                        DateTime creationDate,
                                        DateTime lastLoginDate,
                                        DateTime lastActivityDate,
                                        DateTime lastPasswordChangedDate,
                                        DateTime lastLockedOutDate,
                                        string firstName,
                                        string lastName,
                                        string country,
                                        string parentEmail) :
                                   base(providername,
                                        username,
                                        providerUserKey,
                                        email,
                                        passwordQuestion,
                                        comment,
                                        isApproved,
                                        isLockedOut,
                                        creationDate,
                                        lastLoginDate,
                                        lastActivityDate,
                                        lastPasswordChangedDate,
                                        lastLockedOutDate)
        {
            
        }
        


    }
}