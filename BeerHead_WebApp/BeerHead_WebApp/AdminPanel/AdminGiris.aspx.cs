﻿using ClassLibrary1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BeerHead_WebApp.AdminPanel
{
    public partial class AdminGiris : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_giris_Click(object sender, EventArgs e)
        {
            string kullaniciadi = tb_kullaniciAdi.Text;
            string sifre = tb_sifre.Text;

            Yonetici y = dm.YoneticiGiris(kullaniciadi, sifre);

            if (y != null)
            {
                if (y.Durum)
                {
                    Session["yonetici"] = y;
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    lbl_mesaj.Text = "Hesabınız sistem yöneticisi tarafından askıya alınmıştır";
                }
            }
            else
            {
                lbl_mesaj.Text = "Giriş bilgileri hatalı veya kullanıcı bulunamadı";
            }
        }
    }
}