using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace saham
{
    public partial class rezervasyon : System.Web.UI.Page
    {
        string tarih = DateTime.Now.ToShortDateString();

        

        protected void Page_Load(object sender, EventArgs e)
        {
            lblSeciliTarih.Text = tarih;

            if (lblSeciliTarih.Text == tarih)
            {
                btnOncekiGun.Enabled = false;
            }
        }

        protected void btnRezervasyonYap_Click(object sender, EventArgs e)
        {
            OleDbConnection db_baglanti;

            db_baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0; DATA Source=" + Server.MapPath("sahamdb.accdb"));
            try
            {
                db_baglanti.Open();
                OleDbCommand db_komut = new OleDbCommand("Insert INTO rezervasyon ( adsoyad, eposta, telefon, tarih, saat, aciklama ) Values( '" + txtAd.Text + "','" + txtMail.Text + "','" + txtTelefon.Text + "','" + lblSeciliTarih.Text + "','" + dropSaat.SelectedValue + "','" + txtAciklama.Text + "')", db_baglanti);
                db_komut.ExecuteNonQuery();
                db_baglanti.Close();
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('Rezervasyon İsteğiniz Alınmıştır, Sizinle İletişime Geçilecektir..');", true);
                txtAd.Text = "";
                txtAciklama.Text = "";
                txtMail.Text = "";
                txtTelefon.Text = "";
            }
            catch
            {
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('Bir Hata Oluştur Lütfen Tekrar Deneyiniz...');", true);
            }
        }

        protected void btnSonrakiGun_Click(object sender, EventArgs e)
        {
            lblSeciliTarih.Text = Convert.ToString(DateTime.Now.AddDays(1).ToShortDateString());
        }

        protected void btnOncekiGun_Click(object sender, EventArgs e)
        {
            lblSeciliTarih.Text = Convert.ToString(DateTime.Now.AddDays(-1).ToShortDateString());
        }
    }
}