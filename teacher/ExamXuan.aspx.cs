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

public partial class admin_ExamXuan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection conn = BaseClass.DBCon();
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from tb_Lesson", conn);
            SqlDataReader sdr = cmd.ExecuteReader();
            this.ddlkm.DataSource = sdr;
            this.ddlkm.DataTextField = "LessonName";
            this.ddlkm.DataValueField = "ID";
            this.ddlkm.DataBind();
            this.ddlkm.SelectedIndex = 0;
            conn.Close();
        }
    }
    protected void btnconcel_Click(object sender, EventArgs e)
    {
        txtsubject.Text = "";

    }
    protected void btnconfirm_Click(object sender, EventArgs e)
    {
        if (txtsubject.Text == "")
        {
            MessageBox.Show("请将信息填写完整");
            return;
        }
        else
        {
            string isfb = "";
            if (cbFB.Checked == true)//发布
                isfb = "1";
            else
                isfb = "0";//不发布
            string str = "insert into tb_test(testContent,testAns1,testAns2,testAns3,testAns4,rightAns,pub,testCourse,class) values('" + txtsubject.Text.Trim() + "',' ',' ',' ',' ','" + rblRightAns.SelectedValue.ToString() + "','" + isfb + "','" + ddlkm.SelectedItem.Text + "','多选题')";
            BaseClass.OperateData(str);
            btnconcel_Click(sender, e);
        }
    }
}
