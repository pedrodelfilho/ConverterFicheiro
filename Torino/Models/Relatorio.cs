using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class Relatorio
    {
        public int IDRel { get; set; }
        public string RelUser { get; set; }
        public string RelMod { get; set; }
        public string RelPN { get; set; }
        public int RelQtd { get; set; }
        public bool RelImg { get; set; }
        public string DsImg { get; set; }
        public bool RelLogo { get; set; }
        public string DsLogo { get; set; }
        public bool RelAsset { get; set; }
        public string DsAsset { get; set; }
        public bool RelMasc { get; set; }
        public string DsMasc { get; set; }
        public bool RelPWBios { get; set; }
        public string DsPWBios { get; set; }
        public bool RelAttBios { get; set; }
        public string DsAttBios { get; set; }
        public bool RelSetBios { get; set; }
        public string DsSetBios { get; set; }
        public DateTime RelData { get; set; }
    }
}
