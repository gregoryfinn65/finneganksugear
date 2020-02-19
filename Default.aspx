<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KSU Gear Shop</title>
    <link href="css/mainksugearstyle.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
        }
        .auto-style2 {
         
            height: 30px;
        }
        .auto-style3 {
            height: 30px;
        }
        .auto-style4 {
           
            height: 30px;
        }
        .auto-style5 {
            height: 30px;
        }
        .auto-style6 {
            
            height: 46px;
        }
        .auto-style7 {
            height: 46px;
        }
        .auto-style8 {
            
            height: 15px;
        }
        .auto-style9 {
            height: 30px;
        }
        .auto-style10 {
           
            height: 30px;
        }
        .auto-style11 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left:10%; margin-right: 10%; align-content:center">
        <div class="center">
            <img width:"70%" alt="The Official KSU Gear Shop" title="The Official KSU Gear Shop" src="images/gearShopLogo.PNG" /></div>

        <br /><br />
        <table style="width: 50%;float:left">
            <tr>
                <td class="auto-style8">Name</td>
               
                <td class="auto-style9">
                    <asp:TextBox ID="txtName" runat="server" Width="298px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Address</td>
               
                <td class="auto-style3">
                    <asp:TextBox ID="txtAddress" runat="server" Width="298px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style4">City</td>
               
                <td class="auto-style5">
                    <asp:TextBox ID="txtCity" runat="server" Width="199px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">State</td>
               
                <td class="auto-style11"> <asp:TextBox ID="txtState" runat="server" Width="199px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">Zip</td>
               
                <td class="auto-style3"><asp:TextBox ID="txtZip" runat="server" Width="199px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1">Phone Number</td>
               
                <td><asp:TextBox ID="txtPhoneNum" runat="server" Width="199px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style6">Product</td>
               
                <td class="auto-style7">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="198px">
                        <asp:ListItem Value="15">Hat</asp:ListItem>
                        <asp:ListItem Value="20">T-Shirt</asp:ListItem>
                        <asp:ListItem Value="25">Bookbag</asp:ListItem>
                        <asp:ListItem Value="10">Socks</asp:ListItem>
                        <asp:ListItem Value="2">Sticker</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Shipping Method<br />
                    Choose one:</td>
               
                <td>
                    <asp:ListBox ID="ListBox1" runat="server" Width="162px">
                        <asp:ListItem Value="4.99"> Postal Service Shipping</asp:ListItem>
                        <asp:ListItem Value="9.95">Fedex</asp:ListItem>
                        <asp:ListItem Value="8.95">UPS</asp:ListItem>
                    </asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
               
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
               
                <td class="auto-style3"></td>
            </tr>
             <tr>
                <td class="auto-style1"></td>
               
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width: 40%; float:right">
            <tr>
                <td>&nbsp;</td>
                
                
            </tr>
            <tr>
                <td>&nbsp;</td>
               
                
            </tr>
            <tr>
                <td>
                    <asp:ListBox ID="lstSummary" Width="100%" runat="server"></asp:ListBox>
                </td>
               
            
            </tr>
        </table>
         
    
    </div>
    </form>


    </body>
</html>
