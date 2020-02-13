<%@ Page Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MyProject.WebForm1" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<%--<script type="text/javascript">
    
  document.oncontextmenu=noValue;
 // document.onkeydown = DisableKeys;
  function noValue() { 
	alert("Copyright, All rights reserved."); 
	event.returnValue=false; 
	}
   
 function trimString(sString)
 {
    while (sString.substring(0,1) == ' ')
     {
       sString = sString.substring(1, sString.length);
     }
    while(sString.substring(sString.length-1, sString.length) == ' ')
     {
       sString = sString.substring(0,sString.length-1);
     }
       return sString;
  }
      
     function ChgPwd()
	 {
	//   var win=window.open('Forms/ChangePassword.aspx?RequestFrom=BeforeLogin','Onetelcp','width=350,height=250,top=200,left=250'); 
	     var win=window.open('Forms/ChangePassword.aspx?RequestFrom=BeforeLogin','EPaper','width=350,height=450,top=200,left=250'); 
	 }
	 
 function validateonsubmit()
 {
 if(trimString(document.getElementById("txtLoginId").value) =="")
   {
     alert("Enter your Login Id !!!          ");
     document.getElementById("txtLoginId").focus();
     return false;
   }
   else if(trimString(document.getElementById("txtPassword").value) =="")
   {
     alert("Enter Password !!!          ");
     document.getElementById("txtPassword").focus();
     return false;
   }
  else
   {
    return true;
   }
   
 }
 
 function Reset()
 {
    document.getElementById("txtPassword").value ="";
    document.getElementById("txtLoginId").value =""
 }
    
    </script>
--%>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
<asp:Table ID="Table1"  Width="100%" runat="server">
<asp:TableRow> <asp:TableCell Width="50%" align="right">
 <img alt="" src="IMG/filming.jpg" 
                     style="width: 320px; height: 300px; margin-left: 0px;" /></asp:TableCell>
<asp:TableCell>
<asp:Panel ID="pnlLogin" runat="server" Height="177px" Width="437px" BorderColor="Black" >
    <asp:Table ID="Table2" align="left" Width="60%" runat="server">
     <asp:TableRow>
    <asp:TableCell><font style="font-family:Georgia; font-size:medium; font-weight:bold"> Name</font><font color="red">*</font></asp:TableCell>
    <asp:TableCell> <asp:TextBox ID="txtLoginId" runat="server" Width="160px" Font-Size="X-Small" ForeColor="Maroon" BorderColor="Tan" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Height="17px" Font-Names="Verdana" MaxLength="25"></asp:TextBox></asp:TableCell></asp:TableRow>
    <asp:TableRow> <asp:TableCell><font style="font-family:Georgia; font-size:medium; font-weight:bold"> Password</font><font color="red">*</font></asp:TableCell>
    <asp:TableCell> <asp:TextBox ID="txtPassword" runat="server" Width="160px" Font-Size="X-Small" 
                          ForeColor="Maroon" BorderColor="Tan" BorderStyle="Solid" BorderWidth="1px" 
                          Font-Names="Verdana" Height="17px" MaxLength="25" TextMode="Password"
     > </asp:TextBox></asp:TableCell></asp:TableRow>
     
    <asp:TableRow> <asp:TableCell> <asp:Button ID="btnSubmit" runat="server"  Text="Sign In" onclick="btnSubmit_Click" CssClass="dropbtn"/></asp:TableCell>
    <asp:TableCell><asp:Button ID="btnReset" runat="server" Text="Reset"  onclick="btnReset_Click" CssClass="dropbtn"/></asp:TableCell></asp:TableRow>
    
    <asp:TableFooterRow><asp:TableCell><asp:Label ID="lblErrMsg" runat="Server" Font-Bold="True" Font-Names="Verdana" Font-Size="medium" ForeColor="Red"></asp:Label></asp:TableCell></asp:TableFooterRow></asp:Table>
    </asp:Panel>
 </asp:TableCell>
 </asp:TableRow>
</asp:Table>

   </center>

</asp:Content>
