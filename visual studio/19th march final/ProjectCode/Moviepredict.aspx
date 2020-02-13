<%@ Page Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Moviepredict.aspx.cs" Inherits="MyProject.Moviepredict" %>
<asp:Content  ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"  >
 <div id="SLIDER1">
         <table style="width: 692px; height: 338px">
         <tr><td width="25%"></td><td align="center">
         <table align="left"
                 
                 style="border:none; font-family: Arial, Helvetica, sans-serif; font-size: small; color: #000000; width: 599px; height: 321px;">
        <tr>
        <td colspan="2" style="font-family:Georgia; font-style:oblique; font-weight:bold; font-size:large"><center>MOVIE VERDICT</center></td>
        <td>&nbsp;</td>
        </tr>
        <tr><td class="style5" align="right">Movie:<font color="red">*</font></td><td class="style11">
            <asp:TextBox ID="txt_moviename" runat="server" BorderStyle="Solid" 
                Width="357px" ForeColor="#CC3300" BorderColor="#E6E6E6"></asp:TextBox></td><td class="style2">
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                            ControlToValidate="txt_moviename" ErrorMessage="Enter Movie Name"></asp:RequiredFieldValidator>
                                                    </td></tr>
        <tr><td class="style9" align="right">Genre:<font color="red">*</font></td><td class="style12">
            <asp:DropDownList ID="ddl_genre" runat="server" Height="21px" Width="235px">
            </asp:DropDownList>
            </td><td class="style31">
  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                                            ControlToValidate="ddl_genre" ErrorMessage="Enter Genre"></asp:RequiredFieldValidator>
            </td></tr>
        <tr><td class="style7" align="right">Director:<font color="red">*</font></td><td class="style13">
            <asp:TextBox ID="txt_director" runat="server" BorderStyle="Solid" Width="236px" 
                ForeColor="#CC3300" BorderColor="#E6E6E6"></asp:TextBox></td><td class="style4">
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                            ControlToValidate="txt_director" ErrorMessage="Enter Director"></asp:RequiredFieldValidator>
                                                    </td></tr>
        <tr><td class="style7" align="right">Actor:<font color="red">*</font></td><td class="style13">
            <asp:TextBox ID="txt_actor" runat="server" BorderStyle="Solid" Width="234px" 
                ForeColor="Gray" BorderColor="#E6E6E6"></asp:TextBox></td><td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txt_actor" ErrorMessage="Enter Actor Ddtail"></asp:RequiredFieldValidator>
            </td></tr>
        <tr><td class="style7">Actress:<font color="red">*</font></td><td class="style14">
            <asp:TextBox ID="txt_actress" runat="server" 
                BorderStyle="Solid" Width="233px" ForeColor="#CC3300" BorderColor="Silver"></asp:TextBox></td><td class="style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txt_actress" ErrorMessage="Enter Actress Detail"></asp:RequiredFieldValidator>
            </td></tr>
        <tr><td class="style7">Release Month<font color="red">*</font></td><td class="style14">
            <asp:DropDownList ID="ddl_rmnth" runat="server">
                <asp:ListItem Value="JAN">JAN</asp:ListItem>
                <asp:ListItem>FEB</asp:ListItem>
                <asp:ListItem>MAR</asp:ListItem>
                <asp:ListItem>APR</asp:ListItem>
                <asp:ListItem>MAY</asp:ListItem>
                <asp:ListItem>JUN</asp:ListItem>
                <asp:ListItem>JUL</asp:ListItem>
                <asp:ListItem>AUG</asp:ListItem>
                <asp:ListItem>SEP</asp:ListItem>
                <asp:ListItem>OCT</asp:ListItem>
                <asp:ListItem>NOV</asp:ListItem>
                <asp:ListItem>DEC</asp:ListItem>
            </asp:DropDownList>
            </td><td class="style7">
                &nbsp;</td></tr>
        <tr><td align="center" class="style10">
            &nbsp;&nbsp;&nbsp;
            </td><td align="left" class="style15">
            <asp:Button ID="Button1" runat="server" Text="Movie Prediction" CssClass="dropbtn"   
                    onclick="Button1_Click" />&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Reset Form" CssClass="dropbtn" onclick="Button2_Click" />
            </td><td align="left" class="style10">
                &nbsp;</td></tr>
        <tr><td class="style8">&nbsp;</td><td class="style16">&nbsp;</td><td>&nbsp;</td></tr>
        </table>
        </td></tr>
        <tr><td></td><td>
            &nbsp;</td></tr>
         </table>
 </div>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style2
        {
            height: 28px;
        }
        .style3
        {
            height: 26px;
        }
        .style4
        {
            height: 27px;
        }
        .style5
        {
            height: 29px;
            font-weight:bold;
        }
        .style6
        {
            height: 30px;
        }
        .style7
        {
            height: 31px;
            font-weight:bold;
        }
        .style8
        {
            height: 32px;
        }
        .style9
        {
            height: 33px;
            font-weight:bold;
        }
        .style10
        {
            height: 37px;
        }
        .style11
        {
            height: 28px;
            width: 29px;
        }
        .style12
        {
            height: 26px;
            width: 29px;
        }
        .style13
        {
            height: 27px;
            width: 29px;
        }
        .style14
        {
            height: 31px;
            width: 29px;
        }
        .style15
        {
            height: 37px;
            width: 29px;
        }
        .style16
        {
            width: 29px;
        }
        </style>

</asp:Content>


