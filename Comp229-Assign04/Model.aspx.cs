using Comp229_Assign04.Models;
using Comp229_Assign04.Handlers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign04
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        PersonaHandler p001;
        int pindex = -1;
        protected void Page_Load(object sender, EventArgs e)
        {
            
                p001 = new PersonaHandler();
                p001.Read("\\data\\Assign04_5.json");

            
                if (Request.QueryString["personaid"] != null) {
                    pindex = p001.GetIndex(Request.QueryString["personaid"]);
                    if (pindex < p001.personas.Count)
                    {
                        if (!Page.IsPostBack)
                        {
                            BindToForm(p001.personas[pindex]);
                            button_submit.Text = "Update";
                        }else
                        {
                            button_submit.Text = "Add";
                        }
                    }
            }

            //ObjectDataSource2.SelectParameters.Add("ID", Request.QueryString["personaid"]);
            //ObjectDataSource2.DataBind();
        }

        public void BindFromForm(Personas p)
        {
            p.name = nameTextBox.Text;
            p.faction = factionTextBox.Text;
            p.rank = Int32.Parse(rankTextBox.Text);
            p.Base = Int32.Parse(BaseTextBox.Text);
            p.size = Int32.Parse(sizeTextBox.Text);
            p.deploymentZone = deploymentZoneTextBox.Text;
            //public string[] traits;
            //public string[] types;
            //public string[] defenseChart;
            p.mobility = Int32.Parse(mobilityTextBox.Text);
            p.willpower = Int32.Parse(willpowerTextBox.Text);
            p.resiliance = Int32.Parse(resilianceTextBox.Text);
            p.wounds = Int32.Parse(woundsTextBox.Text);
            //public Action[] actions;
            //public SpecialAbilitie[] specialabilities;
            p.imageurl = imageurlTextBox.Text;
        }

        public void BindToForm(Personas p)
        {
            nameTextBox.Text = p.name;
            factionTextBox.Text = p.faction;
            rankTextBox.Text = p.rank.ToString();
            BaseTextBox.Text = p.Base.ToString();
            sizeTextBox.Text = p.size.ToString();
            deploymentZoneTextBox.Text = p.deploymentZone;
            //public string[] traits;
            //public string[] types;
            //public string[] defenseChart;
            mobilityTextBox.Text = p.mobility.ToString();
            willpowerTextBox.Text = p.willpower.ToString();
            resilianceTextBox.Text = p.resiliance.ToString();
            woundsTextBox.Text = p.wounds.ToString();
            //public Action[] actions;
            //public SpecialAbilitie[] specialabilities;
            imageurlTextBox.Text = p.imageurl;
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {           
            if (pindex == -1) {
                Personas pnew = new Personas();
                BindFromForm(pnew);
                p001.personas.Add(pnew);
            } else
            {           
                BindFromForm(p001.personas[pindex]);
            }

            p001.Write("\\data\\Assign04_5.json");
            Server.Transfer("~/Default.aspx");
            
        }

        protected void InsertCancelButton_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/Default.aspx");
        }
    }
}