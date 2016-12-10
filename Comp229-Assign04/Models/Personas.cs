using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Comp229_Assign04.Models
{
    public class Personas
    {
        public string name { get; set; }
        public string faction { get; set; }
        public string rank { get; set; }
        // Using this variable with uppercase because base is a reserved word and is not allowed to use it. 
        public string Base { get; set; }
        public string deploymentZone { set; get; }
		public string[] traits { set; get; }
		public string[] types { set; get; }
        public string[] defenseChart { set; get; }
		public int mobility { set; get; }
		public int willpower { set; get; }
		public int resiliance { set; get; }
		public int wounds { set; get; }
        public Action[] actions { set; get; }
        public SpecialAbilitie[] specialabilities { set; get; }
        public string imageurl { get; set; }

    }

    public class Action
    {
        public string name { set; get; }
        public string type { set; get; }
        public int rating { set; get; }
		public string range { set; get; }
    }

    public class SpecialAbilitie {
        public string name { get; set; }
        public string description { get; set; }
    }
	
}