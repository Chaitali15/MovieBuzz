<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WFM_Forecasting.Login1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <title>::: Login Here !! :::</title>
   <link href="App_Themes/FSGrey/FS_StyleSheet.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript">
    
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
    
    <style type="text/css">
        .style1
        {
            width: 19px;
        }
        .style3
        {
            height: 16px;
        }
        body
        {
        	background-color:rgba(0,0,0,0.2);
        }
        table
        {
        	background-color:rgba(255,255,255,0.6);
        }
    </style>
    
</head>

<body  topmargin="0" leftmargin="0" rightmargin="0" >
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
      <table border="0" height="100%" width="100%" valign="top">
      
     <tr>
       <td>
         <center>
          <table width="100%">
            <tr>
             <td width="50%" align="right">
             
                 <img alt="" src="IMG/filming.jpg" 
                     style="width: 484px; height: 300px; margin-left: 0px;" /></td>
            
             <td style="width: 50%">
            
              <asp:Panel ID="pnlLogin" runat="server" Height="177px" Width="437px" >
                <table align="left" width="60%" style="color: #FFFFFF">
                  <tr height="50">
                  <td colspan=3 valign="baseline"><font face="Verdana" color="#FF8000" size="2"><b>Sign In</b></font><hr color="#F0F0F0" width="100%"/> </td>
                  </tr>
                  <tr>
                   <td colspan=3 class="style3"><asp:Label ID="lblErrMsg" runat="Server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" ForeColor="Red"></asp:Label></td>
                  </tr>
                  
<%--                  <tr><td class="style1">&nbsp;</td>
                      <td><font face="Verdana" size="1" ><b> Domain&nbsp;&nbsp; :</b></font> </td>
                      <td align="left"><asp:DropDownList ID="ddlDomain" runat="server" Width="160px" Font-Bold="True" 
                              Font-Names="Verdana" Font-Size="X-Small"  ForeColor="DarkRed">
                          </asp:DropDownList>
                      </td>
                  </tr>--%>
                  
                  <tr><td class="style1">&nbsp;</td><td style="width: 62px"><font face="Verdana" size="1" ><b>
                      Login ID :</b></font></td> <td style="width: 5px"><asp:TextBox ID="txtLoginId" runat="server" Width="160px" Font-Size="X-Small" ForeColor="Maroon" BorderColor="Tan" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Height="17px" Font-Names="Verdana" MaxLength="25"></asp:TextBox></td> </tr>
                  <tr><td class="style1">&nbsp;</td><td style="width: 62px"><font face="Verdana" size="1"><b>Password :</b></font></td><td style="width: 5px">
                      <asp:TextBox ID="txtPassword" runat="server" Width="160px" Font-Size="X-Small" 
                          ForeColor="Maroon" BorderColor="Tan" BorderStyle="Solid" BorderWidth="1px" 
                          Font-Names="Verdana" Height="17px" MaxLength="25" TextMode="Password" 
                          ontextchanged="txtPassword_TextChanged"></asp:TextBox> 
                     
                  </td> </tr>
                  
                  <tr><td class="style1"></td><td style="width: 62px"></td><td style="width: 5px">
                  <table>
                  <tr>
                  
                  <td>
                  <asp:Button ID="btnSubmit" runat="Server"  Text="Sign In"
                          CssClass="ele_button" onclick="btnSubmit_Click" 
                          OnClientClick="return validateonsubmit();" />
                  
                  </td>
                   <td> 
                       <asp:Button ID="btnReset" runat="server" CssClass="ele_button"  Text="Reset" 
                           OnClientClick="Reset();" onclick="btnReset_Click"/></td>                  
                  </tr>
                  </table>
                   </td></tr>
                                    
                </table>
              </asp:Panel>
           <p><asp:HyperLink ID="link1" runat="server" NavigateUrl="~/Home.aspx">Go To Movie Buzz</asp:HyperLink></p>
            
              </td>
            </tr>
            
          </table>
          </center>
       </td>
     </tr>
            <cc1:RoundedCornersExtender TargetControlID="pnlLogin" ID="RoundedCornersExtender1" BorderColor="Tan" runat="server">
            </cc1:RoundedCornersExtender>
     <tr>
       <td >
         
   <br /><br />
    
        
    </div>
    </form>
</body>
</html>
