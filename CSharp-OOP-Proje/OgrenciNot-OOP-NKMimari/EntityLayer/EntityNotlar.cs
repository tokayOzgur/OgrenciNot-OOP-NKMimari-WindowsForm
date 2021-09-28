using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntityLayer
{
    public class EntityNotlar
    {
        private int _ogrId;
        private int _sinav1;
        private int _sinav2;
        private int _sinav3;
        private int _proje;
        private double _ortalama;
        private string _durum;
        private string _Ad;
        private string _Soyad;

        public int ogrId { get { return _ogrId; } set { _ogrId = value; } }
        public int sinav1 { get { return _sinav1; } set { _sinav1 = value; } }
        public int sinav2 { get { return _sinav2; } set { _sinav2 = value; } }
        public int sinav3 { get { return _sinav3; } set { _sinav3 = value; } }
        public int proje { get { return _proje; } set { _proje = value; } }
        public double ortalama { get { return _ortalama; } set { _ortalama = value; } }
        public string durum { get { return _durum; } set { _durum = value; } }

        public string Soyad { get => _Soyad; set => _Soyad = value; }
        public string Ad { get => _Ad; set => _Ad = value; }
    }
}
