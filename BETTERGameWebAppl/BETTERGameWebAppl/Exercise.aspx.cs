using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BETTERGameWebAppl
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Exercise_Click(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.User != null && System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                BetterGameMembershipProvider provider = new BetterGameMembershipProvider();
                BetterGameMembershipUser user = (BetterGameMembershipUser)provider.GetUser(System.Web.HttpContext.Current.User.Identity.Name.ToString(), true);

                CharacterInteraction interaction = new CharacterInteraction();

                Character c = interaction.getCurrentCharacter(user.UserName);

                if (!interaction.exerciseSubmittedToday(c))
                {
                    if (Convert.ToInt32(exercisetime.Text) > 45)
                    {
                        c.experience = c.experience + interaction.exerciseBracketExp(45);
                    }

                    else
                    {
                        c.experience = c.experience + interaction.exerciseBracketExp(Convert.ToInt32(exercisetime.Text));
                    }

                    interaction.updateExperience(c);
                    Response.Redirect("~/Character.aspx", true);
                }

                else
                {
                    exerciceSubmitted.Visible = true;
                }
            }
        }
    }
}