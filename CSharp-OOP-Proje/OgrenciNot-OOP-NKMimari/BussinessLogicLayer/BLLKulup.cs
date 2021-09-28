using EntityLayer;
using FacadeLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BussinessLogicLayer
{
    public class BLLKulup
    {
        public static int Ekle(EntityKulup deger)
        {
            if (!string.IsNullOrEmpty(deger.klpAd))
            {
                return FacadeKulup.Ekle(deger);
            }
            return -1;
        }

        public static bool Guncelle(EntityKulup deger)
        {
            if (!string.IsNullOrEmpty(deger.klpAd) && deger.klpId != null)
            {
                return FacadeKulup.Guncelle(deger);
            }
            return false;
        }

        public static bool Sil(int deger)
        {
            if (deger != null)
            {
                return FacadeKulup.Sil(deger);
            }
            return false;
        }

        public static List<EntityKulup> Listele()
        {
            return FacadeKulup.KulupListesi();
        }
    }
}
