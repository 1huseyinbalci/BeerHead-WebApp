﻿using ClassLibrary1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BeerHead_WebApp.AdminPanel
{
    public partial class KategoriListeleGridView : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            gv_Kategoriler.DataSource = dm.KategoriListele();
            gv_Kategoriler.DataBind();
        }
    }
}