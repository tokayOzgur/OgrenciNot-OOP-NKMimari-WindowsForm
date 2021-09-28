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
    public class FacadeKulup
    {
        public static int Ekle(EntityKulup deger)
        {
            SqlCommand komut = new SqlCommand("KulupEkle", SqlBaglantisi.baglanti);
            komut.CommandType = CommandType.StoredProcedure;
            if (komut.Connection.State != ConnectionState.Open)
            {
                SqlBaglantisi.baglanti.Open();
            }

            komut.Parameters.AddWithValue("Ad", deger.klpAd);
            komut.Parameters.AddWithValue("Aciklama", deger.klpAciklama);
            return komut.ExecuteNonQuery();
        }

        public static bool Sil(int deger)
        {
            SqlCommand komut = new SqlCommand("KulupSil", SqlBaglantisi.baglanti);
            komut.CommandType = CommandType.StoredProcedure;
            if (komut.Connection.State != ConnectionState.Open)
            {
                SqlBaglantisi.baglanti.Open();
            }
            komut.Parameters.AddWithValue("id", deger);
            return komut.ExecuteNonQuery() > 0;
        }

        public static bool Guncelle(EntityKulup deger)
        {
            SqlCommand komut = new SqlCommand("KulupGuncelle", SqlBaglantisi.baglanti);
            komut.CommandType = CommandType.StoredProcedure;
            if (komut.Connection.State != ConnectionState.Open)
            {
                SqlBaglantisi.baglanti.Open();
            }
            komut.Parameters.AddWithValue("Ad", deger.klpAd);
            komut.Parameters.AddWithValue("Aciklama", deger.klpAciklama);
            komut.Parameters.AddWithValue("id", deger.klpId);

            return komut.ExecuteNonQuery() > 0;
        }

        public static List<EntityKulup> KulupListesi()
        {
            List<EntityKulup> degerler = new List<EntityKulup>();
            SqlCommand komut = new SqlCommand("KulupListesi", SqlBaglantisi.baglanti);
            if (komut.Connection.State != ConnectionState.Open)
            {
                SqlBaglantisi.baglanti.Open();
            }
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                EntityKulup ent = new EntityKulup();
                ent.klpId = Convert.ToInt16(dr["klpId"]);
                ent.klpAd = dr["klpAd"].ToString();
                ent.klpAciklama = dr["klpAciklama"].ToString();
                degerler.Add(ent);
            }
            dr.Close();
            return degerler;
        }
    }
}
