<%@ Page Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="NewReleases.aspx.cs" Inherits="MyProject.NewReleases" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"  >
<br />
<table align="center" border="0" > 
<tr><td align="center">&nbsp;<asp:Label ID="Label1" runat="server" Text="Movie Release Calendar" 
        Font-Names="Georgia" Font-Italic="true" Font-Size="Large" Font-Bold="True"></asp:Label></td></tr>
<tr><td  class="style2">
    <asp:GridView ID="gridControl" runat="server" Font-Names="Verdana" 
        Font-Size="Smaller" 
        Height="141px" Width="737px" BackColor="White" BorderColor="#CC9966" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="White" 
        GridLines="Horizontal" 
         >
        <RowStyle BackColor="White" ForeColor="#330099" />
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="#FFFFCC" />
        <AlternatingRowStyle BackColor="#E6FFFF" />
    </asp:GridView>
</td></tr>
<tr><td>&nbsp;</td></tr>
</table>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style2
        {
            width: 754px;
        }
    </style>

</asp:Content>
