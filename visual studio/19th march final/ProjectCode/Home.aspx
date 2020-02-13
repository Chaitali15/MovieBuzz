<%@ Page Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MyProject.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"  >
    <div id="SLIDER1">
    <style type="text/css">
        .img1
{
  margin: 40px;
  padding: 10px;
  border: 1px solid burlywood;
  border-radius:20px;
  box-shadow: 10px 10px 5px #888888;
  height: 180px;
  width:150px;
  float: left;
  text-align: center;
}	
.img1 img
{
  display: inline;
  margin: 5px;
  border: 1px solid #ffffff;
}
.img1:hover
{
border: 1px solid #0000ff;
-webkit-transform: rotate(7deg) scale(1.3); 
  transform: rotate(7deg) scale(1.3);

}
.desc
{
	font-family:Georgia;
	font-style:italic;
	font-weight:bold;
  text-align: center;
  width: 120px;
  margin: 5px;
  color:Black;
}
.style11
{
	background-color:white;
	text-align:center;
	font-family:Georgia;
	font-style:italic;
	font-weight:bolder;
	text-align:center;
	color:Black;
	font-size:larger;
}
.style23
{
	background-color:rgba(192,192,192,0.5);
	font-family:Georgia;
	font-style:italic;
	font-weight:bolder;
	text-align:center;
	color:Black;
	font-size:larger;
}

  </style>
<asp:Label ID="Label1" runat="server" Text="New Releases" CssClass="style11"></asp:Label></div>
    <div align="center" class="style23">
<asp:DataList ID="DataList1" runat="server"
cellpadding="1"
cellspacing="1"
borderstyle="None"
width="50%"
headerstyle-font-name="Verdana"
headerstyle-font-size="12pt"
headerstyle-horizontalalign="center"
headerstyle-font-bold="True"
itemstyle-forecolor="#ffffff"
footerstyle-font-size="9pt"
footerstyle-font-italic="True" RepeatDirection="Horizontal" 
Font-Size="Medium" ForeColor="#ffffff" Height="150px" CssClass="style23">

<ItemTemplate>
       
  
           <asp:Image ID="Image1" CssClass="img1" ImageUrl='<%# Eval("Poster_path") %>' runat="server" />
                
            <center><div class="desc"><br /><%# Eval("Movie_Name")%></div></center> 
            
        <center><div class="desc"><br /><%# Eval("Release_Date")%></div></center>
        
        
        
            
</ItemTemplate>

</asp:DataList>
<div style="background-color:White"><a href="NewReleases.aspx"><asp:Image ID="Image2" runat="server" Height="70px" ImageUrl="images/pict.png" 
            Width="80px" /></a></div>

</div>

&nbsp; 
</asp:Content>

