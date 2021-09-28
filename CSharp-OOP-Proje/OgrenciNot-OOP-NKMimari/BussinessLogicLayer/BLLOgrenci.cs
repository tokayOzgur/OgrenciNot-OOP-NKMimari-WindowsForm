using EntityLayer;
using FacadeLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BussinessLogicLayer
{
    public class BLLOgrenci
    {
        public static int Ekle(EntityOgrenci deger)
        {
            if (!string.IsNullOrEmpty(deger.ad) && !string.IsNullOrEmpty(deger.soyad) && deger.kulupId >0 && !string.IsNullOrEmpty(deger.fotograf) && deger.kulupId > 0)
            {
                return FacadeOgrenci.Ekle(deger);
            }
            return -1;
        }

        public static bool Guncelle(EntityOgrenci deger)
        {
            if (!string.IsNullOrEmpty(deger.ad) && !string.IsNullOrEmpty(deger.soyad) && deger.kulupId>0 && !string.IsNullOrEmpty(deger.fotograf) && deger.kulupId > 0 && deger.id >0)
            {
                return FacadeOgrenci.Guncelle(deger);
            }
            return false;
        }

        public static bool Sil(int deger)
        {
            if (deger != null && deger > 1)
            {
                return FacadeOgrenci.Sil(deger);
            }
            return false;
        }

        public static List<EntityOgrenci> Listele()
        {
            return FacadeOgrenci.OgrenciListesi();
        }
    }
}
