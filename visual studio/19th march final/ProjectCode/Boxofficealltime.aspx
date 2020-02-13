<%@ Page Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Boxofficealltime.aspx.cs" Inherits="MyProject.Boxofficealltime" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"  >
    <table align="left" border=0 style="height: 656px; width: 761px"> 
<tr><td><br /><span class="style4"><span class="style5">Show 
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
        style="height: 22px" Height="34px" Width="108px">
        <asp:ListItem Selected="True" Value="ALL">ALL</asp:ListItem>
    </asp:DropDownList> </span></span>&nbsp;<span class="style31">Region</span></td>
</tr> 
<tr><td align="center" style="font-family: Georgia; font-size: large; font-style:oblique; font-weight:bold; color: #333333;">BoxOffice-Alltime</td></tr>  
<tr><td align="center" class="style2">
    <asp:GridView ID="gridControl" runat="server" Font-Names="Verdana" 
        Font-Size="Smaller" 
        Height="141px" Width="693px" BackColor="White" BorderColor="#CC9966" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        GridLines="Horizontal">
        <RowStyle BackColor="White" ForeColor="#330099" />
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="#FFFFCC" />
    </asp:GridView>
</td></tr>
</table>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style2
        {
            width: 754px;
        }
        .style3
        {
            font-family: Verdana;
            font-size: medium;
        }
        .style4
        {
            font-family: Verdana;
        }
        .style5
        {
            font-size: medium;
        }
    </style>

</asp:Content>
