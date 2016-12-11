using Comp229_Assign04.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace Comp229_Assign04.Handlers
{

    /// <summary>
    /// Class to manipulate the json object (add, remove, read, write, etc)
    /// </summary>
    public class PersonaHandler
    {
        public List<Personas> personas { get; set; } 

        public void Read(string file)
        {
            using (StreamReader reader = File.OpenText(System.Web.HttpContext.Current.Server.MapPath(file)))
            {
                JToken jton = JToken.ReadFrom(new JsonTextReader(reader));
                personas = JsonConvert.DeserializeObject<List<Personas>>(jton.ToString());
            }
        }

        public void Write(string file)
        {
            var convertedJson = JsonConvert.SerializeObject(personas, Formatting.Indented);
            using (StreamWriter outputFile = new StreamWriter(System.Web.HttpContext.Current.Server.MapPath(file)))
            {
                outputFile.WriteLine(convertedJson);
            }
        }

        public void Add(Personas person)
        {
            personas.Add(person);
        }

        public void Remove(string name)
        {
            //Personas ptemp = new Personas();
            personas.Remove(personas.Find(x => x.name == name));
        }

        public Personas GetAll(int ID)
        {
            return personas[ID];
        }

        public int GetIndex(string name)
        {
            return personas.FindIndex(x => x.name == name);
        }

        public Personas GetPersona(string name)
        {
            return personas.Find(x => x.name == name);
        }

        public void BindtoForm()
        {

        }

        

    }
}