using Comp229_Assign04.Models;
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
            /*
             * string json = @"{
              CPU: 'Intel',
              Drives: [
                'DVD read/writer',
                '500 gigabyte hard drive'  ]
            }";
            
            JObject o = JObject.Parse(json);

            Literal1.Text = o.ToString();

            */

            JToken jton;
            var j = new List<Personas>();

            using (StreamReader reader = File.OpenText(MapPath("\\data\\Assign04_2.json")))
            {
                jton = JToken.ReadFrom(new JsonTextReader(reader)); 
                JArray jarr = JArray.Parse(@jton.ToString());

                JObject jo = JObject.Parse(jarr[0].ToString());

                string character = (string)jton.SelectToken("attributes[0]");
                Literal1.Text = jton.ToString();
                Literal2.Text = jarr[0]["name"].ToString();
                Literal3.Text = jo.ToString();

                var characters = from cchar in jarr select cchar;

                //Literal3.Text = character.Length.ToString();
                foreach( var ccharacter in characters)
                {

                    Literal4.Text += ccharacter["name"] + "<br>";
                }

                j = JsonConvert.DeserializeObject<List<Personas>>(jton.ToString());

                foreach (var ccharacter in j)
                {
                    Literal5.Text += ccharacter.name + "<br>";
                    //Literal6.Text = ccharacter.imageurl;
                    //Image1.ImageUrl = ccharacter.imageurl;
                }

            }

            Personas person1 = new Personas();
            person1.name = "Araugh";

            j.Add(person1);

            Literal7.Text = j.Count().ToString();

            var convertedJson = JsonConvert.SerializeObject(j, Formatting.Indented);

            Literal7.Text = convertedJson.ToString();

            using (StreamWriter outputFile = new StreamWriter(MapPath("\\data\\Assign04_2.json")))
            {
                outputFile.WriteLine(convertedJson);

            }



            }
    }
}