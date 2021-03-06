﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
public partial class admin_AdminChangePwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("../Login.aspx");
        }
    }
    protected void btnchange_Click(object sender, EventArgs e)
    {
        if (txtNewPwd.Text == "" || txtNewPwdA.Text == "" || txtOldPwd.Text == "")
        {
            MessageBox.Show("请将信息填写完整");
            return;
        }
        else
        {
            if (BaseClass.CheckAdmin(Session["admin"].ToString(), txtOldPwd.Text.Trim()))
            {
                if (txtNewPwd.Text.Trim() != txtNewPwdA.Text.Trim())
                {
                    MessageBox.Show("两次密码不一致");
                    return;
                }
                else
                {
                    string strsql = "update tb_Admin set AdminPwd='" + txtNewPwdA.Text.Trim() + "' where AdminNum='" + Session["admin"].ToString() + "'";
                    BaseClass.OperateData(strsql);
                    MessageBox.Show("密码修改成功");
                    txtNewPwd.Text = "";
                    txtNewPwdA.Text = "";
                    txtOldPwd.Text = "";
                }
            }
            else
            {
                MessageBox.Show("旧密码输入错误");
                return;
            }
        }
    }
}
