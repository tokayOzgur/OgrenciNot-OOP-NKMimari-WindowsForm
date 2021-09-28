using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntityLayer
{
    public class EntityKulup
    {
        int _klpId;
        string _klpAd;
        string _klpAciklama;

        public int klpId { get { return _klpId; } set { _klpId = value; } }
        public string klpAd { get { return _klpAd; } set { _klpAd = value; } }
        public string klpAciklama { get { return _klpAciklama; } set { _klpAciklama = value; } }
    }
}
