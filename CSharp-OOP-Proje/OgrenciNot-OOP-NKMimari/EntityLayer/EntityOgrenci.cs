using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntityLayer
{
    public class EntityOgrenci
    {
        int _id;
        string _ad;
        string _soyad;
        string _fotograf;
        int _kulupId;


        public int id { get { return _id; } set { _id = value; } }
        public string ad { get { return _ad; } set { _ad = value; } }
        public string soyad { get { return _soyad; } set { _soyad = value; } }
        public string fotograf { get { return _fotograf; } set { _fotograf = value; } }
        public int kulupId { get { return _kulupId; } set { _kulupId = value; } }
    }
}
