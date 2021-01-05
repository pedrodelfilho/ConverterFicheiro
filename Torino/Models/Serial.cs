using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class Serial
    {
        public int IDSerial { get; set; }
        public string DsCliente { get; set; }
        public string DsEquip { get; set; }
        public string DsPN { get; set; }
        public string DsSN { get; set; }
        public string DsAsset { get; set; }
        public DateTime DsDataHr { get; set; }
    }
}
