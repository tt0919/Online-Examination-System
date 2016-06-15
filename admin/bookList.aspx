<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bookList.aspx.cs" Inherits="admin_bookList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>留言板</title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div style="text-align: center">

        &nbsp;&nbsp;<fieldset style="width: 510px;text-align: left">
            <legend class="mailTitle">留言板</legend>
            <br />
            <table><tr align="left"><td class="style1">
           <asp:GridView ID="gvExaminationresult2" runat="server" AutoGenerateColumns="False" BackColor="White"
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3"
            Width="504px" AllowPaging="True" 
                    OnPageIndexChanging="gvExaminationresult_PageIndexChanging" PageSize="4">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <Columns>
                <asp:BoundField DataField="title" HeaderText="标题">
                    <ItemStyle HorizontalAlign="Center" Width="40px" />
                </asp:BoundField>
                <asp:BoundField DataField="content" HeaderText="内容">
                    <ItemStyle HorizontalAlign="Center" Width="50px" />
                </asp:BoundField>
                <asp:BoundField DataField="name" HeaderText="姓名">
                    <ItemStyle HorizontalAlign="Center" Width="50px" />
                </asp:BoundField>
                <asp:BoundField DataField="qq" HeaderText="QQ">
                    <ItemStyle HorizontalAlign="Center" Width="30px" />
                </asp:BoundField>
            </Columns>
            <RowStyle ForeColor="#000066" Height="15px" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Height="15px" />
        </asp:GridView>
        </td></tr></table>
            <br />
        </fieldset>
    </div>
    </form>
</body>
</html>
