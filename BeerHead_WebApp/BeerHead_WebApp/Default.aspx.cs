using ClassLibrary1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BeerHead_WebApp
{
    public partial class Default : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString.Count == 0)
            {
                lv_makaleler.DataSource = dm.MakaleListele(true);
                lv_makaleler.DataBind();
            }
            else
            {
                int id = Convert.ToInt32(Request.QueryString["kid"]);
                lv_makaleler.DataSource = dm.MakaleListele(id, true);
                lv_makaleler.DataBind();
            }
        }
    }
}