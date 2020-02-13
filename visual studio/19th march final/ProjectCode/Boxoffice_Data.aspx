<%@ Page Language="C#"MasterPageFile="~/Site2.Master"  AutoEventWireup="true" CodeBehind="Boxoffice_Data.aspx.cs" Inherits="MyProject.Boxoffice_Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"  >
    <table align="center" border="0" > 
<tr><td>&nbsp;</td></tr>
<tr><td>Show 
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
        style="height: 22px">
        <asp:ListItem Selected="True" Value="0">ALL</asp:ListItem>
    </asp:DropDownList> entries</td>
</tr>
<tr><td align="center" style="font-family: Georgia; font-size: large; font-style:oblique; font-weight:bold; color: #333333;">Top Net Grossers</td></tr>
<tr><td  class="style2">
    <asp:GridView ID="gridControl" runat="server" Font-Names="Verdana" 
        Font-Size="Smaller" 
        Height="141px" Width="750px" BackColor="White" BorderColor="#CC9966" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="White" 
        GridLines="Horizontal" AllowSorting="True" OnSorting="GridView1_Sorting" 
        >
        <RowStyle BackColor="White" ForeColor="#330099" />
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="#FFFFCC" />
        <AlternatingRowStyle BackColor="White" />
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