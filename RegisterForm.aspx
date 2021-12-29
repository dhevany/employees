<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterForm.aspx.cs" Inherits="employee.RegisterForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


    <head runat="server">
    <title></title>
      <style type="text/css">
        .style1
        {
            width: 100%;
            background-color: #C0C0C0;
        }
        .style2
        {
            height: 31px;
        }
          .style3
          {
              width: 611px;
          }
          .style4
          {
              height: 31px;
              width: 611px;
          }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   
        <table class="style1">
            <tr>
                <td colspan="2" align="center">
                    <asp:Label ID="lbreg" runat="server" Text="Registration Form"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    <asp:Label ID="lbname" runat="server" Text="Name"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="txtname" runat="server" Height="27px" Width="170px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    <asp:Label ID="lbphoneno" runat="server" Text="Phone no"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="txtphoneno" runat="server" Height="27px" Width="170px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    <asp:Label ID="lbemail" runat="server" Text="Email"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="txtemail" runat="server" Height="27px" Width="170px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style4">
                    <asp:Label ID="lbdob" runat="server" Text="Date of birth"></asp:Label>
                </td>
                <td align="left" class="style2">
                    <asp:TextBox ID="txtdob" runat="server" Height="27px" Width="170px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    <asp:Label ID="lbaddress" runat="server" Text="Address"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="txtaddress" runat="server" Height="64px" TextMode="MultiLine"
                        Width="176px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    <asp:Label ID="lboutput" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="btnsubmit" runat="server" Height="27px" Text="Submit"
                        Width="98px" onclick="btnsubmit_Click" />
                </td>
            </tr>
        </table>
   
    </div>
    </form>
</body>
</html>