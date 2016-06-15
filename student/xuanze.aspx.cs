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

public partial class student_xuanze : System.Web.UI.Page
{
    //SqlConnection conn = BaseClass.DBCon();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = BaseClass.DBCon();
        conn.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select testContent,testCourse,class  from tb_test", conn);
        //SqlDataReader sdr = cmd.ExecuteReader();
        sda.Fill(ds, "table");
        gvStuInfo.DataSource = ds;
        gvStuInfo.DataBind();
        BindDropDownList();
    }
    private void BindDropDownList()
    {
        SqlConnection conn = BaseClass.DBCon();
        conn.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select testContent,testCourse,class  from tb_test", conn);
        //SqlDataReader sdr = cmd.ExecuteReader();
        sda.Fill(ds, "table");
        gvStuInfo.DataSource = ds;
        gvStuInfo.DataBind();
    }
    //protected void btnserch_Click(object sender, EventArgs e)
    //{
       
    //        //SqlConnection conn = BaseClass.DBCon();
    //        //conn.Open();
    //        //SqlDataAdapter sda = new SqlDataAdapter("select * from tb_test  where testCourse='"+this.TextBox1.Text.Trim()+"' and class='" + DropDownList1.SelectedValue + "'", conn);
    //        //sda.Fill(ds, "table");
    //        //gvStuInfo.DataSource = ds;
    //        //gvStuInfo.DataBind();   
    //    string stype = ddlType.SelectedItem.Text;
    //    string classs=DropDownList1.SelectedItem.Text;
    //    string strsql = "";

    //    strsql = "select * from tb_test where testCourse = '" + ddlType.SelectedItem.Text + "' and class ='" + DropDownList1.SelectedItem.Text + "'";
    //    BaseClass.BindDG(gvStuInfo, "ID", strsql, "test"); ;
    //}
    

    protected void gvStuInfo_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        gvStuInfo.PageIndex = e.NewSelectedIndex;
        BindDropDownList();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Login.aspx");
    }

    protected void gvStuInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvStuInfo.PageIndex = e.NewPageIndex;
        BindDropDownList();
    }
}
