using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Text;
using System.Data;

namespace saham
{
    public partial class onaybekleyenler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbConnection db_baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0; DATA Source=" + Server.MapPath("sahamdb.accdb"));

            db_baglanti.Open();
            OleDbCommand db_komut = new OleDbCommand();
            db_komut.CommandText = "select * from rezervasyon where onay=0";
            db_komut.Connection = db_baglanti;
            OleDbDataReader dr = db_komut.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            db_baglanti.Close();
        }

        protected void rezervasyon_onayla_Click1(object sender, EventArgs e)
        {
            OleDbConnection baglanti;

            string veritabaniyolu = "Provider=Microsoft.ACE.OLEDB.12.0; DATA Source=" + Server.MapPath("sahamdb.accdb");
            baglanti = new OleDbConnection(veritabaniyolu);
            OleDbCommand komut = new OleDbCommand();
            OleDbDataReader okuyucu;
            baglanti.Open();
            komut.Connection = baglanti;
            komut.CommandText = "UPDATE rezervasyon SET onay=1";
            okuyucu = komut.ExecuteReader();
            System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('İşleminiz Başarıyla Gerçekleştirildi..');", true);
            baglanti.Close();
            Response.Redirect("onaybekleyenler.aspx");
        }
    }
}