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

public partial class Book_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void imgBtnAdd_Click(object sender, ImageClickEventArgs e)
    {
        string title = txtTitle.Text;
        string info = txtInfo.Text.ToString().Trim();
        string name = txtLinkMan.Text;
        string qq = txtTel.Text;
        string sql="insert into book values('"+txtTitle.Text+"','"+txtInfo.Text.ToString().Trim()+"','"+txtLinkMan.Text+"','"+txtTel.Text+"')";
        BaseClass.OperateData(sql);

        Page.ClientScript.RegisterStartupScript(Page.GetType(), "", "<script>alert('留言簿添加成功！');{location.href='../student/studentexam.aspx'}</script>");
    }
}
