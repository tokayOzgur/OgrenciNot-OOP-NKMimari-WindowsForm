using BussinessLogicLayer;
using EntityLayer;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace OgrenciNot_OOP_NKMimari
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        //Listeleme metodu
        void OgrenciListesi()
        {
            List<EntityOgrenci> ogrList = BLLOgrenci.Listele();
            dataGridView1.DataSource = ogrList;
            this.Text = "Öğrenci Listesi";
        }
        void KulupListesi()
        {
            List<EntityKulup> klpList = BLLKulup.Listele();
            cmbOgrKulup.DisplayMember = "klpAd";
            cmbOgrKulup.ValueMember = "klpId";
            cmbOgrKulup.DataSource = klpList;
            dataGridView1.DataSource = klpList;
            this.Text = "Kulüp Listesi";
        }
        void NotlarListesi()
        {
            List<EntityNotlar> notList = BLLNotlar.Listele();
            dataGridView1.DataSource = notList;
            this.Text = "Not Listesi";
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            OgrenciListesi();
            KulupListesi();
        }

        private void btnOgrKaydet_Click(object sender, EventArgs e)
        {
            EntityOgrenci ent = new EntityOgrenci();
            ent.ad = txtOgrAd.Text.ToUpper();
            ent.soyad = txtOgrSoyad.Text.ToUpper();
            ent.fotograf = txtOgrFoto.Text.ToLower();
            ent.kulupId = Convert.ToInt16(cmbOgrKulup.SelectedValue);
            int sonuc = BLLOgrenci.Ekle(ent);
            if (sonuc == -1)
            {
                MessageBox.Show("Öğrenci Kaydı Başarısız.");
            }
            else
            {
                MessageBox.Show("Öğrenci Kaydı Tamamlandı.");
            }

            OgrenciListesi();
        }

        private void btnOgrListele_Click(object sender, EventArgs e)
        {
            OgrenciListesi();
        }

        private void btnOgrSil_Click(object sender, EventArgs e)
        {

        }

        private void btnOgrGuncelle_Click(object sender, EventArgs e)
        {
            EntityOgrenci ent = new EntityOgrenci();
            ent.ad = txtOgrAd.Text.ToUpper();
            ent.soyad = txtOgrSoyad.Text.ToUpper();
            ent.fotograf = txtOgrFoto.Text.ToLower();
            ent.kulupId = Convert.ToInt16(cmbOgrKulup.SelectedValue);
            ent.id = Convert.ToInt16(txtOgrId.Text);
            bool sonuc = BLLOgrenci.Guncelle(ent);

            if (!sonuc)
            {
                MessageBox.Show("Öğrenci Güncelleme İşlemi Başarısız.");
            }
            else
            {
                MessageBox.Show("Öğrenci Güncelleme Tamamlandı.");
            }
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (this.Text == "Öğrenci Listesi")
            {

                int secilen = dataGridView1.SelectedCells[0].RowIndex;
                txtOgrId.Text = dataGridView1.Rows[secilen].Cells[0].Value.ToString();
                txtOgrAd.Text = dataGridView1.Rows[secilen].Cells[1].Value.ToString();
                txtOgrSoyad.Text = dataGridView1.Rows[secilen].Cells[2].Value.ToString();
                txtOgrFoto.Text = dataGridView1.Rows[secilen].Cells[3].Value.ToString();
            }
            if (this.Text == "Not Listesi")
            {

                int secilen = dataGridView1.SelectedCells[0].RowIndex;
                txtNotId.Text = dataGridView1.Rows[secilen].Cells[0].Value.ToString();
                txtNotS1.Text = dataGridView1.Rows[secilen].Cells[1].Value.ToString();
                txtNotS2.Text = dataGridView1.Rows[secilen].Cells[2].Value.ToString();
                txtNotS3.Text = dataGridView1.Rows[secilen].Cells[3].Value.ToString();
                txtNotProje.Text = dataGridView1.Rows[secilen].Cells[4].Value.ToString();
                txtNotOrt.Text = dataGridView1.Rows[secilen].Cells[5].Value.ToString();
                txtNotDurum.Text = dataGridView1.Rows[secilen].Cells[6].Value.ToString();
            }
            if (this.Text == "Kulüp Listesi")
            {
                int secilen = dataGridView1.SelectedCells[0].RowIndex;
                txtKlpId.Text = dataGridView1.Rows[secilen].Cells[0].Value.ToString();
                txtKlpAd.Text = dataGridView1.Rows[secilen].Cells[1].Value.ToString();
                txtKlpAciklama.Text = dataGridView1.Rows[secilen].Cells[2].Value.ToString();
            }
        }

        private void btnNotListele_Click(object sender, EventArgs e)
        {
            NotlarListesi();
        }

        private void btnNotGuncelle_Click(object sender, EventArgs e)
        {
            EntityNotlar ent = new EntityNotlar();
            ent.ogrId = Convert.ToInt16(txtNotId.Text);
            ent.sinav1 = Convert.ToInt16(txtNotS1.Text);
            ent.sinav2 = Convert.ToInt16(txtNotS2.Text);
            ent.sinav3 = Convert.ToInt16(txtNotS3.Text);
            ent.proje = Convert.ToInt16(txtNotProje.Text);
            ent.ortalama = Convert.ToDouble(txtNotOrt.Text);
            ent.durum = (txtNotDurum.Text);
            bool sonuc = BLLNotlar.Guncelle(ent);
            if (!sonuc)
            {
                MessageBox.Show("Not Güncelleme İşlemi Başarısız.");
            }
            else
            {
                MessageBox.Show("Not Güncelleme Tamamlandı.");
            }
            NotlarListesi();
        }

        private void btnHesapla_Click(object sender, EventArgs e)
        {
            int s1, s2, s3, proje;
            double ort;
            string durum;

            s1 = Convert.ToInt16(txtNotS1.Text);
            s2 = Convert.ToInt16(txtNotS2.Text);
            s3 = Convert.ToInt16(txtNotS3.Text);
            proje = Convert.ToInt16(txtNotProje.Text);

            ort = (double)(s1 + s2 + s3 + proje) / 4;
            txtNotOrt.Text = ort.ToString();

            txtNotDurum.Text = ort < 50 ? "False" : "True";
        }

        private void btnKlpListele_Click(object sender, EventArgs e)
        {
            KulupListesi();
        }

        private void btnKlbKaydet_Click(object sender, EventArgs e)
        {
            EntityKulup ent = new EntityKulup();
            ent.klpAd = txtKlpAd.Text;
            ent.klpAciklama = txtKlpAciklama.Text;


            int sonuc = BLLKulup.Ekle(ent);
            if (sonuc == -1)
            {
                MessageBox.Show("Kulüp Ekleme İşlemi Başarısız.");
            }
            else
            {
                MessageBox.Show("Kulüp Ekleme Tamamlandı.");
            }
            KulupListesi();
        }

        private void btnKlpSil_Click(object sender, EventArgs e)
        {
            EntityKulup ent = new EntityKulup();
            ent.klpId = Convert.ToInt16(txtKlpId.Text);
            bool sonuc = BLLKulup.Sil(ent.klpId);

            if (!sonuc)
            {
                MessageBox.Show("Kulüp Silme İşlemi Başarısız.");
            }
            else
            {
                MessageBox.Show("Kulüp Silme İşlemi Başarılı.");
            }
            KulupListesi();
        }

        private void btnKlpGuncelle_Click(object sender, EventArgs e)
        {
            EntityKulup ent = new EntityKulup();
            ent.klpAd = txtKlpAd.Text;
            ent.klpAciklama = txtKlpAciklama.Text;
            ent.klpId = Convert.ToInt16(txtKlpId);
            BLLKulup.Guncelle(ent);
        }
    }
}
