<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xuanze.aspx.cs" Inherits="student_xuanze" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>题目查询</title>
      <style type="text/css">
body {
 background-image: url(../Image/back.jpg);
}
          .style1
          {
              width: 20%;
          }
          .style2
          {
              text-align: right;
              width: 590px;
          }
          .style3
          {
              width: 590px;
          }
          .style4
          {
              text-align: center;
          }
      </style>
    <link href="../Mystyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server" background="../Image/back.jpg">
    
    &nbsp;<table style="width:100%;">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style3">
    
    <fieldset style="width: 544px; height: 236px">
    <legend class="mailTitle">题目信息查询</legend>
        <br />
        <div class="style4">
        <asp:GridView ID="gvStuInfo" runat="server" AutoGenerateColumns="False" BackColor="White"
            BorderColor="DeepSkyBlue" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                Width="541px" AllowPaging="True" PageSize="8" 
                onselectedindexchanging="gvStuInfo_SelectedIndexChanging" 
                onpageindexchanging="gvStuInfo_PageIndexChanging">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <Columns>
                <asp:BoundField DataField="testCourse" HeaderText="章节" />
                <asp:BoundField DataField="testContent" HeaderText="题目内容" />
                <asp:BoundField DataField="class" HeaderText="题型" />
            </Columns>
            <RowStyle ForeColor="#000066" Height="15px" HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center" />
            <HeaderStyle BackColor="Transparent" Font-Bold="False" ForeColor="Black" Height="15px" />
        </asp:GridView>
        </div>
        <br />
    </fieldset></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
            <asp:Button ID="Button1" runat="server" Text="退出" onclick="Button1_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
