using ClassLibrary1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BeerHead_WebApp.AdminPanel
{
    public partial class UyeIslemleri : System.Web.UI.Page
    {
         DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            VeriGetir();
        }

        protected void lv_uyeler_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "sil")
            {
                dm.UyeSil(id);
            }
            VeriGetir();
            
        }
        public void VeriGetir()
        {
            lv_uyeler.DataSource = dm.UyeListele();
            lv_uyeler.DataBind();
        }
    }
}