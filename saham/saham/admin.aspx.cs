using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace saham
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            string kullaniciadi = txtAd.Text;
            string sifre = txtSifre.Text;

            OleDbConnection baglanti;

            string veritabaniyolu = "Provider=Microsoft.ACE.OLEDB.12.0; DATA Source=" + Server.MapPath("sahamdb.accdb");
            baglanti = new OleDbConnection(veritabaniyolu);
            OleDbCommand komut = new OleDbCommand();
            OleDbDataReader okuyucu;
            baglanti.Open();
            komut.Connection = baglanti;
            komut.CommandText = "SELECT * FROM admingirisi where adminadi='" + kullaniciadi + "' AND adminsifre='" + sifre + "'";
            okuyucu = komut.ExecuteReader();

            if (okuyucu.Read())
            {
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('Hoş Geldin Admin, Şimdi Yönlendirileceksin...');", true);
                Response.Redirect("adminpaneli.aspx");
            }
            else
            {
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('Bilgileriniz Yanlış Lütfen Tekrar Deneyiniz');", true);
            }

            baglanti.Close();
        }
    }
}