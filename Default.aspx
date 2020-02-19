<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KSU Gear Shop</title>
    <link href="css/mainksugearstyle.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
         
            height: 30px;
        }
        .auto-style3 {
            height: 30px;
        }
        .auto-style4 {
            height: 29px;
        }
        .auto-style6 {
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
        .auto-style12 {
            height: 32px;
        }
        .auto-style13 {
            height: 73px;
        }
        .auto-style14 {
            height: 45px;
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
                <td class="auto-style8">Name:</td>
               
                <td class="auto-style9">
                    <asp:TextBox ID="txtName" runat="server" Width="298px" style="margin-bottom: 0px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="NameValidator" runat="server" ControlToValidate="txtName" ErrorMessage="* Please enter a name." ForeColor="Red">* Please enter a name.</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email:</td>
               
                <td class="auto-style3">
                    <asp:TextBox ID="txtEmail1" runat="server" Width="298px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">Re-enter Email:</td>
               
                <td class="auto-style3">
                    <asp:TextBox ID="txtEmail2" runat="server" Width="298px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtEmail1" ControlToValidate="txtEmail2" ErrorMessage="* Emails do not match" ForeColor="Red">* Emails do not match</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Address:</td>
               
                <td class="auto-style3">
                    <asp:TextBox ID="txtAddress" runat="server" Width="298px"></asp:TextBox></td>
            </tr>
            
            <tr>
                <td class="auto-style4">City:</td>
               
                <td class="auto-style4">
                    <asp:TextBox ID="txtCity" runat="server" Width="199px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">State:</td>
               
                <td class="auto-style11"> <asp:TextBox ID="txtState" runat="server" Width="199px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">Zip:</td>
               
                <td class="auto-style3"><asp:TextBox ID="txtZip" runat="server" Width="199px"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Phone Number:</td>
               
                <td class="auto-style12"><asp:TextBox ID="txtPhoneNum" runat="server" Width="199px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="PhoneNumValidator" runat="server" ControlToValidate="txtPhoneNum" ErrorMessage="* must be valid phone number" ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">* must be valid phone number</asp:RegularExpressionValidator> <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Product:</td>
               
                <td class="auto-style6">
                    <asp:DropDownList ID="ddlProduct"  AutoPostBack="True" runat="server" Width="198px">
                        <asp:ListItem Value="15">Hat</asp:ListItem>
                        <asp:ListItem Value="20">T-Shirt</asp:ListItem>
                        <asp:ListItem Value="25">Bookbag</asp:ListItem>
                        <asp:ListItem Value="10">Socks</asp:ListItem>
                        <asp:ListItem Value="2">Sticker</asp:ListItem>
                    </asp:DropDownList>
             
                    &nbsp;
             
                    <asp:Label ID="PriceLabel" runat="server" Text="[Price]"></asp:Label>
             
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Quantity:</td>
               
                <td class="auto-style14">
                    <asp:TextBox ID="QuantityBox" runat="server" TextMode="Number"></asp:TextBox>&nbsp;&nbsp;
                    <asp:RangeValidator ID="QuantityRangeValidator" runat="server" ErrorMessage="* quantity out of range" ForeColor="Red" ControlToValidate="QuantityBox" MaximumValue="10" MinimumValue="0" SetFocusOnError="True" Type="Integer">* quantity out of range</asp:RangeValidator> <br />

                </td> 
          
            </tr>
            <tr>
                <td class="auto-style13">Shipping Method<br />
                    Choose one:</td>
               
                <td class="auto-style13">
                    <asp:ListBox ID="lbShipping" AutoPostBack="True" runat="server" Width="162px">
                        <asp:ListItem Value="4.99"> Postal Service Shipping</asp:ListItem>
                        <asp:ListItem Value="9.95">Fedex</asp:ListItem>
                        <asp:ListItem Value="8.95">UPS</asp:ListItem>
                    </asp:ListBox>
                    <asp:Label ID="ShippingLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
               
                <td class="auto-style3">
                    <asp:Button ID="CalculateButton" runat="server" Text="Confirm" />  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="ClearButton" runat="server" Text="Clear Order Form" CausesValidation="False" />
                </td>
            </tr>
             
        </table>
        <table style="width: 40%; float:right">
            <tr>
                <td>
                    <asp:ListBox ID="lstSummary" Width="100%" runat="server" Height="290px"></asp:ListBox>
                </td>
                
                
            </tr>
            <tr>
                <td>
                    <asp:Button ID="SubmitButton" runat="server" Text="Submit Order" />
                </td>
               
                
            </tr>
            <tr>
                <td>
                    <asp:Label ID="OrderSubmitted" runat="server" AssociatedControlID="SubmitButton" BorderStyle="None" Font-Bold="True" ForeColor="#003300" Text="Order Submitted! Thank you for your order." Visible="False"></asp:Label>
       
                </td>
               
            
            </tr>
        </table>
         
    <br />
    <br />
    <br />
    <br />
    <br /> &nbsp;
    </div>
    </form>


    </body>
</html>
