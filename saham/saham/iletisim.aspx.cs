using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Data.OleDb;

namespace saham
{
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            OleDbConnection db_baglanti;

            db_baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0; DATA Source=" + Server.MapPath("sahamdb.accdb"));
            try
            {
                db_baglanti.Open();
                OleDbCommand db_komut = new OleDbCommand("Insert INTO iletisim ( adsoyad, eposta, konu, mesaj ) Values( '" + txtAd.Text + "','" + txtMail.Text + "','" + txtKonu.Text + "','" + txtMesaj.Text + "')", db_baglanti);
                db_komut.ExecuteNonQuery();
                db_baglanti.Close();
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('Mesajınız İletilmiştir. İlginiz İçin Teşekkür Ederiz.');", true);
                txtAd.Text = "";
                txtKonu.Text = "";
                txtMail.Text = "";
                txtMesaj.Text = "";

            }
            catch
            {
                Response.Write("Bağlantıda sorun var !!!");
            }
        }
    }
}