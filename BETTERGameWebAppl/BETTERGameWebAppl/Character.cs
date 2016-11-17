using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BETTERGameWebAppl
{
    public sealed class Character
    {
        private string _userName;
        private string _type;
        private string _characterName;
        private int _experience;

        public string userName
        {
            get { return _userName; }
            set { _userName = value; }
        }

        public string type
        {
            get { return _type; }
            set { _type = value; }
        }

        public string characterName
        {
            get { return _characterName; }
            set { _characterName = value; }
        }

        public int experience
        {
            get { return _experience; }
            set { _experience = value; }
        }

        public Character(string userName,
                         string type,
                         string characterName,
                         int experience)
        {
            this.userName = _userName;
            this.type = _type;
            this.characterName = _characterName;
            this.experience = _experience;

        }
            
    }
}