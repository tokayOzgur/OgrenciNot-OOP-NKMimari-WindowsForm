using EntityLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FacadeLayer
{
    public class FacadeNotlar
    {
        public static bool Guncelle(EntityNotlar deger)
        {
            SqlCommand komut = new SqlCommand("NotGuncelle", SqlBaglantisi.baglanti);
            komut.CommandType = CommandType.StoredProcedure;
            if (komut.Connection.State != ConnectionState.Open)
                komut.Connection.Open();

            komut.Parameters.AddWithValue("notSinav1", deger.sinav1);
            komut.Parameters.AddWithValue("notSinav2", deger.sinav2);
            komut.Parameters.AddWithValue("notSinav3", deger.sinav3);
            komut.Parameters.AddWithValue("notProje", deger.proje);
            komut.Parameters.AddWithValue("notOrtalama", deger.ortalama);
            komut.Parameters.AddWithValue("notDurum", deger.durum);
            komut.Parameters.AddWithValue("notOgrId", deger.ogrId);

            return komut.ExecuteNonQuery() > 0;
        }

        public static List<EntityNotlar> NotListesi()
        {
            List<EntityNotlar> degerler = new List<EntityNotlar>();
            SqlCommand komut = new SqlCommand("NotListesi", SqlBaglantisi.baglanti);
            if (komut.Connection.State != ConnectionState.Open)
                komut.Connection.Open();

            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                EntityNotlar ent = new EntityNotlar();
                ent.ogrId = Convert.ToInt16(dr["notOgrId"]);
                ent.Ad = dr["ogrAd"].ToString();
                ent.Soyad = dr["ogrSoyad"].ToString();
                ent.sinav1 = Convert.ToInt16(dr["notSinav1"]);
                ent.sinav2 = Convert.ToInt16(dr["notSinav2"]);
                ent.sinav3 = Convert.ToInt16(dr["notSinav3"]);
                ent.proje = Convert.ToInt16(dr["notProje"]);
                ent.ortalama = Convert.ToDouble(dr["notOrtalama"]);
                ent.durum = dr["notDurum"].ToString();

                degerler.Add(ent);
            }

            dr.Close();
            return degerler;
        }
    }
}
