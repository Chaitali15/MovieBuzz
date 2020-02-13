<%@ Page Language="C#" MasterPageFile="~/Site2.Master"  AutoEventWireup="true" CodeBehind="StarRanking.aspx.cs" Inherits="MyProject.StarRanking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"  >
    <br /><br />
    <table align="center" style="width: 725px"> 
    <tr><td colspan="2" align="center" 
            style="font-family: Georgia; font-size: large; font-style:oblique; font-weight:bold; color: #333333">Stars Ranking</td></tr>
<tr><td align="center">
    <asp:GridView ID="gridControl" runat="server" Font-Names="Verdana" 
        Font-Size="Smaller" 
        Height="264px" Width="411px" BackColor="White" BorderColor="#CC9966" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        AutoGenerateColumns="False" GridLines="Horizontal">
        <RowStyle BackColor="White" ForeColor="#330099" />
        <Columns>
            <asp:ImageField AlternateText="IMG-STAR" DataImageUrlField="Image_path">
                <ControlStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" 
                    Height="70px" Width="70px" />
            </asp:ImageField>
            <asp:BoundField DataField="Actor/Actress" HeaderText="Actors" />
            <asp:BoundField DataField="Rank" HeaderText="Rank">
                <ControlStyle BackColor="Black" />
                <ItemStyle BackColor="#FFCCFF" ForeColor="Blue" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
            </asp:BoundField>
            <%-- <asp:BoundField DataField="Rating" HeaderText="Rating">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField> --%>
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <HeaderStyle BackColor="#6699FF" Font-Bold="True" ForeColor="#FFFFCC" />
        <AlternatingRowStyle BackColor="#DDEEFF" />
    </asp:GridView>
</td>
<td>  
    <asp:GridView ID="GridView2" runat="server" Font-Names="Verdana" 
        Font-Size="Smaller"
        Height="264px" Width="334px" BackColor="White" BorderColor="#CC9966" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        AutoGenerateColumns="False" GridLines="Horizontal">
        <RowStyle BackColor="White" ForeColor="#330099" />
        <Columns>
            <asp:ImageField AlternateText="IMG-STAR" DataImageUrlField="Image_path">
                <ControlStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" 
                    Height="70px" Width="70px" />
            </asp:ImageField>
            <asp:BoundField DataField="Actor/Actress" HeaderText="Actresses" />
            <asp:BoundField DataField="Rank" HeaderText="Rank">
                <ControlStyle BackColor="#FFCCFF" />
                <ItemStyle BackColor="#FFCCFF" ForeColor="Blue" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
            </asp:BoundField>
            <%-- <asp:BoundField DataField="Rating" HeaderText="Rating">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField> --%>
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <HeaderStyle BackColor="#6699FF" Font-Bold="True" ForeColor="#FFFFCC" />
        <AlternatingRowStyle BackColor="#DDEEFF" />
    </asp:GridView></td>
</tr>
</table>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style2
        {
            font-family: Verdana;
            font-size: large;
        }
    </style>

</asp:Content>
