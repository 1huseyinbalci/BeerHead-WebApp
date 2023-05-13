using ClassLibrary1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BeerHead_WebApp
{
    public partial class UyeKayit : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtn_giris_Click(object sender, EventArgs e)
        {
            Uye u = new Uye();
            u.Isim = tb_isim.Text;
            u.Soyisim = tb_soyad.Text;
            u.Mail = tb_mail.Text;
            u.Durum = true;
            u.Sifre = tb_sifre.Text;
            u.KullaniciAdi = tb_kullaniciAdi.Text;

            if (dm.UyeEkle(u))
            {
                pnl_basarili.Visible = true;
                pnl_basarisiz.Visible = false;
            }
            else
            {
                pnl_basarili.Visible = false;
                pnl_basarisiz.Visible = true;
            }
        }
    }
}