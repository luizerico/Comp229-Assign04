using Comp229_Assign04.Models;
using Comp229_Assign04.Handlers;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign04
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            PersonaHandler p001 = new PersonaHandler();

            p001.Read("\\data\\Assign04_5.json");


            rptResults.DataSource = p001.personas;
            rptResults.DataBind();
           
            // Literal6.Text = p001.personas.Count().ToString();
            // p001.Remove("Araugh");
            // Literal7.Text = p001.personas.Count().ToString();
            // p001.Write("\\data\\Assign04_3.json");

        }
    }
}