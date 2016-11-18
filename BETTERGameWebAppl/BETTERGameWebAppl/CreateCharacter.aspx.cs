using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BETTERGameWebAppl
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.User != null && System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                BetterGameMembershipProvider provider = new BetterGameMembershipProvider();
                BetterGameMembershipUser user = (BetterGameMembershipUser)provider.GetUser(System.Web.HttpContext.Current.User.Identity.Name.ToString(), true);

                CharacterInteraction interaction = new CharacterInteraction();
                Character c = interaction.getCurrentCharacter(user.UserName);

                if (c.characterName != null)
                {
                    Response.Redirect("~/Character.aspx");
                }
            }
        }

        protected void btncharcreate_Click(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.User != null && System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                BetterGameMembershipProvider provider = new BetterGameMembershipProvider();
                BetterGameMembershipUser user = (BetterGameMembershipUser)provider.GetUser(System.Web.HttpContext.Current.User.Identity.Name.ToString(), true);

                CharacterInteraction interaction = new CharacterInteraction();

                interaction.createCharacter(charname.Text, user.UserName, ddlelement.SelectedValue);
            }
        }
    }
}