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
using System.Data.SqlClient;

public partial class Register_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Visible = false;
    }
    protected void btnAddAndReturn_Click(object sender, EventArgs e)
    {
        string userName = tbUserName.Text;
        string password = tbPasswordStr.Text.ToString().Trim();
        string zhucenum = tbEmail.Text;
        string sex = DropDownList1.SelectedValue;
        string str = "insert into tb_Student values('" + tbEmail.Text + "','" + tbUserName.Text + "','" + tbPasswordStr.Text.ToString().Trim() + "','" + DropDownList1.SelectedValue + "')";
        BaseClass.OperateData(str);
        //BaseClass s = new BaseClass();
        //s.Login(zhucenum, userName, password, sex);
        //Label2.Visible = true;
        Response.Redirect("~/Login.aspx");
    }

    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("note.aspx");
    //}
}
