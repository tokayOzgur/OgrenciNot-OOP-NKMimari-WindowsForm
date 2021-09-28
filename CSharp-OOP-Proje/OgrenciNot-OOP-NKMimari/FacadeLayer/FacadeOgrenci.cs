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
    public class FacadeOgrenci
    {
        public static int Ekle(EntityOgrenci deger)
        {
            SqlCommand komut = new SqlCommand("OgrenciEkle", SqlBaglantisi.baglanti);
            komut.CommandType = CommandType.StoredProcedure;
            if (komut.Connection.State != ConnectionState.Open)
            {
                SqlBaglantisi.baglanti.Open();
            }
            komut.Parameters.AddWithValue("Ad", deger.ad);
            komut.Parameters.AddWithValue("Soyad", deger.soyad);
            komut.Parameters.AddWithValue("Fotograf", deger.fotograf);
            komut.Parameters.AddWithValue("KulupId", deger.kulupId);
            return komut.ExecuteNonQuery();
        }

        public static bool Sil(int deger)
        {
            SqlCommand komut = new SqlCommand("OgrenciSil", SqlBaglantisi.baglanti);
            komut.CommandType = CommandType.StoredProcedure;
            if (komut.Connection.State != ConnectionState.Open)
            {
                SqlBaglantisi.baglanti.Open();
            }
            komut.Parameters.AddWithValue("id", deger);
            return komut.ExecuteNonQuery() > 0;
        }

        public static bool Guncelle(EntityOgrenci deger)
        {
            SqlCommand komut = new SqlCommand("OgrenciGuncelle", SqlBaglantisi.baglanti);
            komut.CommandType = CommandType.StoredProcedure;
            if (komut.Connection.State != ConnectionState.Open)
            {
                SqlBaglantisi.baglanti.Open();
            }
            komut.Parameters.AddWithValue("ad", deger.ad);
            komut.Parameters.AddWithValue("soyad", deger.soyad);
            komut.Parameters.AddWithValue("fotograf", deger.fotograf);
            komut.Parameters.AddWithValue("kulupId", deger.kulupId);
            komut.Parameters.AddWithValue("id", deger.id);

            return komut.ExecuteNonQuery() > 0;
        }

        public static List<EntityOgrenci> OgrenciListesi()
        {
            List<EntityOgrenci> degerler = new List<EntityOgrenci>();
            SqlCommand komut = new SqlCommand("OgrenciListesi", SqlBaglantisi.baglanti);
            komut.CommandType = CommandType.StoredProcedure;
            if (komut.Connection.State != ConnectionState.Open)
            {
                SqlBaglantisi.baglanti.Open();
            }
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                EntityOgrenci ent = new EntityOgrenci();
                ent.ad = dr["ogrAd"].ToString();
                ent.soyad = dr["ogrSoyad"].ToString();
                ent.fotograf = dr["ogrFotograf"].ToString();
                ent.kulupId = Convert.ToInt16(dr["ogrKulupId"]);
                ent.id = Convert.ToInt16(dr["ogrId"]);

                degerler.Add(ent);
            }
            dr.Close();

            return degerler;
        }
    }
}
