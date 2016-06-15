using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class admin_bookList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strsql = "select * from book order by ID desc";
            BaseClass.BindDG2(gvExaminationresult2, "ID", strsql, "result2");
        }
    }
    protected void gvExaminationresult_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvExaminationresult2.PageIndex = e.NewPageIndex;
        string strsql = "select * from book order by ID desc";
        BaseClass.BindDG2(gvExaminationresult2, "ID", strsql, "result2");
    }
}
