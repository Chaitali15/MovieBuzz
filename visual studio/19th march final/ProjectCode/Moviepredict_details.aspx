<%@ Page Language="C#" MasterPageFile="~/Site2.Master"  AutoEventWireup="true" CodeBehind="Moviepredict_details.aspx.cs" Inherits="MyProject.Moviepredict_details" %>
<asp:Content  ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"  >
<div id="slider1">
<table border="0">
<tr><td>
        </td></tr>
<tr><td><h2 style="font-family:Georgia; font-style:oblique; font-weight:bolder; font-size: large">Movie Forecast</h2></td></tr>
<tr><td align="center" class="style25">
<table align="left"  style="border-left: thin none #C0C0C0; border-right: thin none #C0C0C0; border-top: thin dotted #C0C0C0; border-bottom: thin dotted #C0C0C0; font-family: Verdana; font-size: small; color: #000000;height: 94px; table-layout: auto; width: 569px;">
<tr style="background-color:Gray"><td class="style17" align="left" style="border-bottom-style: none">Movie Name :</td><td class="style11" 
        align="left">
    <asp:Label ID="lbl_mname" runat="server" Text="Label" Font-Names="Verdana" 
            Font-Size="small" ForeColor="White" Font-Bold="True"></asp:Label>
   </td><td class="style11" 
        align="left">
        Genre :</td><td class="style11" 
        align="left">
     <asp:Label ID="lbl_genre" runat="server" Text="Label" Font-Names="Verdana" 
            Font-Size="small" ForeColor="White" Font-Bold="True"></asp:Label>

     </td></tr>
<tr style="background-color: #FFFFFF"><td class="style28" align="left">Actor Name :</td><td class="style12" align="left">
    <asp:Label ID="lbl_actor" runat="server" Text="Label" Font-Names="Verdana" 
        Font-Size="small" ForeColor="Black" Font-Bold="True" ></asp:Label>
    </td><td class="style12" align="left">
        Actress Name:</td><td class="style12" align="left">
    <asp:Label ID="lbl_actress" runat="server" Text="Label" Font-Names="Verdana" 
            Font-Size="small" ForeColor="Black" Font-Bold="True"></asp:Label>
    </td></tr>
<tr style="background-color: Gray"><td class="style17" align="left">Director Name:</td><td class="style13" 
        align="left">
    <asp:Label ID="lbl_director" runat="server" Text="Label" Font-Names="Verdana" 
        Font-Size="small" ForeColor="White" Font-Bold="True"></asp:Label>
    </td><td class="style13" 
        align="left">
    Release Month:</td><td class="style13"  
        align="left">
        <asp:Label ID="lbl_relmnth" runat="server" Text="Label" Font-Names="Verdana" 
            Font-Size="small" ForeColor="White" Font-Bold="True"></asp:Label>
    </td></tr>
</table>
</td></tr>
<tr><td align="center" style="vertical-align: top" class="style29">
    <asp:GridView ID="GridView1" runat="server" 
        Width="347px" Font-Names="Verdana" Font-Size="Medium" Height="132px" GridLines="Both"
        CellPadding="4" ForeColor="White" 
        Caption="Forecast Parameter % Valuation" CaptionAlign="Top">
        <RowStyle BackColor="White" ForeColor="#333333" Font-Names="Georgia" 
            Font-Size="medium" HorizontalAlign="Center" VerticalAlign="Middle" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle Font-Names="Georgia" Font-Size="large" Font-Italic="true" BackColor="Gray" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="Wheat" Font-Names="Georgia" />
    </asp:GridView>
    </td></tr>
<tr><td align="center" >&nbsp;</td></tr>  
<tr><td align="center" >
    <asp:GridView ID="GridView2" runat="server" CellPadding="4"
        ForeColor="White" Caption="Forecasted Values " 
        Font-Names="Verdana" Font-Size="Medium" CaptionAlign="Top" GridLines="Both">
    <RowStyle BackColor="White" ForeColor="Black" Font-Names="Verdana" 
            Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="Black" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" Font-Italic="true" 
            Font-Names="Georgia" Font-Size="medium" />
    <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
</td></tr>  
<tr><td align="center" >&nbsp;</td></tr>  
<tr><td align="center" >
    <asp:Label ID="Label1" runat="server" Font-Names="Georgia" Font-Italic="true" Font-Size="Medium" BackColor="Beige" Font-Bold="true" 
        ForeColor="Black" Text="Suggestions"></asp:Label>
</td></tr>  
<tr><td align="center" >

<asp:GridView ID="gridControl3" runat="server" BackColor="White" 
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        ForeColor="#333333">
        <RowStyle BackColor="White" Font-Names="Georgia" Font-Size="small" 
            ForeColor="Black" />
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" Font-Bold="true" Font-Italic="true"/>
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <HeaderStyle BackColor="Gray" Font-Bold="True" Font-Size="Medium" ForeColor="White" Font-Names="Georgia" Font-Italic="true"/>
    </asp:GridView>
<br />

    <asp:GridView ID="gridControl2" runat="server" BackColor="White" 
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        ForeColor="#333333">
        <RowStyle BackColor="White" Font-Names="Georgia" Font-Size="small" 
            ForeColor="Black" />
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" Font-Bold="true" Font-Italic="true"/>
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <HeaderStyle BackColor="Gray" Font-Bold="True" Font-Size="Medium" ForeColor="White" Font-Names="Georgia" Font-Italic="true"/>
    </asp:GridView>


    
    <br />  
    <asp:Button runat="server" ID="btn_back" Text="Go Back" CssClass="dropbtn" BackColor="Gray" ForeColor="White"  OnClick="btn_back_Click" />
</td></tr>  
<tr><td align="center" >&nbsp;</td></tr>  
 </table>
 </div>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style11
        {
            height: 31px;
            width: 366px;
            color:White;
            font-family:Georgia;
            font-style:italic;
            font-weight:bold;
        }
        .style12
        {
            height: 35px;
            width: 366px;
            font-family:Georgia;
            font-style:italic;
            font-weight:bold;
        }
        .style13
        {
            height: 27px;
            width: 366px;
            color:White;
            font-family:Georgia;
           font-style:italic;
            font-weight:bold;
        }
        .style17
        {
            height:31px;
            width:250px;
            color:White;
            font-family:Georgia;
            font-style:italic;
            font-weight:bold;
        }
        .style25
        {
            height: 185px;
        }
        .style28
        {
            height: 35px;
            width: 250px;
            font-family:Georgia;
            font-style:italic;
            font-weight:bold;
        }
        .style29
        {
            height: 155px;
        }
        </style>

</asp:Content>