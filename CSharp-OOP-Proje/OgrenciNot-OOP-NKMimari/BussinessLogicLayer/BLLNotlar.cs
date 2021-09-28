using EntityLayer;
using FacadeLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BussinessLogicLayer
{
    public class BLLNotlar
    {
        public static bool Guncelle(EntityNotlar deger)
        {
            if (deger.ogrId != null && deger.ogrId > 0 && deger.ortalama != null && deger.ortalama >= 0 && deger.ortalama <= 100 && deger.sinav1 != null && deger.sinav1 >= 0 && deger.sinav1 <= 100 && deger.sinav2 != null && deger.sinav2 >= 0 && deger.sinav2 <= 100 && deger.sinav3 != null && deger.sinav3 >= 0 && deger.sinav3 <= 100 && deger.proje != null && deger.proje >= 0 && deger.proje <= 100)
            {
                return FacadeNotlar.Guncelle(deger);
            }
            return false;
        }

        public static List<EntityNotlar> Listele()
        {
            return FacadeNotlar.NotListesi();
        }
    }
}
