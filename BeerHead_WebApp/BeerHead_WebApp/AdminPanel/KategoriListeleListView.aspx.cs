﻿using ClassLibrary1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BeerHead_WebApp.AdminPanel
{
    public partial class KategoriListeleListView : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            lv_kategoriler.DataSource = dm.KategoriListele();
            lv_kategoriler.DataBind();
        }

        protected void lv_kategoriler_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            dm.KategoriSil(id);
            lv_kategoriler.DataSource = dm.KategoriListele();
            lv_kategoriler.DataBind();
        }
    }
}