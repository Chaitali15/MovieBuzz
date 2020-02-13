<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_ManageUser.aspx.cs"
    Inherits="MyProject.frm_ManageUser" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<%@ Register Src="Topmenu.ascx" TagName="Topmenu" TagPrefix="uc1" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        #centered
        {
            width: 70%;
            text-align: center;
            border: 0px;
            padding: 0;
            margin: 0 auto;
        }
        .style21
        {
            width: 130px;
            font-family: Verdana;
            font-size: small;
            text-align: left;
        }
        .style25
        {
            width: 191px;
            text-align: left;
        }
        .style23
        {
            width: 41px;
        }
        .style20
        {
            width: 109px;
            font-family: Verdana;
            font-size: small;
            text-align: left;
        }
        .style18
        {
            width: 189px;
        }
        .style26
        {
            width: 130px;
            height: 9px;
            font-family: Verdana;
            font-size: small;
            text-align: left;
        }
        .style24
        {
            height: 9px;
            width: 41px;
        }
        .style19
        {
            height: 9px;
            width: 189px;
        }
        .style12
        {
            height: 9px;
        }
        .style3
        {
            font-family: Verdana;
            font-size: small;
        }
        .style6
        {
            width: 3px;
            height: 19px;
        }
        .style4
        {
            width: 577px;
        }
        .style10
        {
            width: 117px;
            height: 9px;
            font-family: Verdana;
            font-size: small;
            text-align: left;
        }
        .style8
        {
            width: 3px;
            height: 3px;
        }
        .style22
        {
            width: 3px;
        }
        .style27
        {
        }
        .style29
        {
            width: 71px;
        }
        .style33
        {
            width: 206px;
        }
        .style34
        {
            width: 395px;
        }
        .style35
        {
        }
        .style39
        {
        }
        .style40
        {
            width: 78px;
            height: 31px;
        }
        .style41
        {
            width: 75px;
            height: 31px;
        }
        .style42
        {
            width: 73px;
            height: 31px;
        }
        .style43
        {
            text-align: right;
        }
        body
        {
            margin: 0;
            padding: 0;
            padding-top: 10px;
            padding-left: 10%;
            padding-right: 10%;
            text-align: center;
        }
        #centered
        {
            width: 70%;
            text-align: center;
            border: 0px;
            padding: 0;
            margin: 0 auto;
        }
        #form1
        {
            width: 965px;
        }
        .style44
        {
            font-family: Verdana;
            font-size: small;
            text-align: left;
            height: 23px;
            font-weight: bold;
        }
        .style49
        {
            height: 23px;
        }
        .style50
        {
            height: 31px;
        }
        .style51
        {
            width: 130px;
            font-family: Verdana;
            font-size: small;
            text-align: left;
            height: 29px;
        }
        .style52
        {
            width: 191px;
            text-align: left;
            height: 29px;
        }
        .style53
        {
            width: 41px;
            height: 29px;
        }
        .style54
        {
            width: 109px;
            font-family: Verdana;
            font-size: small;
            text-align: left;
            height: 29px;
        }
        .style55
        {
            width: 189px;
            height: 29px;
        }
        .style56
        {
            height: 29px;
        }
        .style57
        {
            font-weight: bold;
        }
    </style>
</head>
<body bgcolor="#eeebe4">
    <form id="form1" runat="server" style="background-color: #FFFFFF">
    <div id="centered" style="border-color: #99CCFF">
        <div>
            <div style="text-align: left">
                <br />
                
                <asp:Label ID="Label1" runat="server" BackColor="White" Font-Names="Calibri" Font-Size="XX-Large"
                    ForeColor="#94AFAC" Text="UPLOAD DATA"></asp:Label>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <uc1:Topmenu ID="Topmenu1" runat="server" />
            </div>
        </div>
        <table style="width: 99%;" align="center">
           <%--  <tr>
                <td style="text-align: left">
                    <table style="width: 95%;">
                        <tr>
                            <td class="style44" colspan="5">
                                &nbsp;
                                &nbsp;
                                &nbsp;
                                &nbsp;
                                &nbsp;
                                Manage Users</td>
                            <td class="style49">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style51">
                                Domain ID :
                            </td>
                            <td class="style52">
                                <asp:TextBox ID="txtDomainID" runat="server" BorderColor="#BDBD82" BorderStyle="Solid"
                                    Width="155px" BorderWidth="1px" Height="18px"></asp:TextBox>
                                &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" BorderStyle="Solid" Height="20px"
                                    ImageUrl="~/IMG/icon-search.gif" Width="22px" OnClick="ImageButton1_Click" />
                            </td>
                            <td class="style53">
                                &nbsp;
                            </td>
                            <td class="style54">
                                Manager :
                            </td>
                            <td class="style55">
                                <telerik:RadComboBox ID="ddlManager" runat="server" Skin="Sunset" Width="160px" Height="100px">
                                    <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                                </telerik:RadComboBox>
                            </td>
                            <td class="style56">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style21">
                                Emp ID :
                            </td>
                            <td class="style25">
                                <asp:TextBox ID="txtEmpID" runat="server" BorderColor="#BDBD82" BorderStyle="Solid"
                                    Width="157px" BorderWidth="1px" Height="20px"></asp:TextBox>
                            </td>
                            <td class="style23">
                                &nbsp;
                            </td>
                            <td class="style20">
                                TL :
                            </td>
                            <td class="style18">
                                <telerik:RadComboBox ID="ddlTL" runat="server" Skin="Sunset" Height="100px">
                                    <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                                </telerik:RadComboBox>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style26">
                                Name :
                            </td>
                            <td class="style25">
                                <asp:TextBox ID="txtEmpName" runat="server" BorderColor="#BDBD82" BorderStyle="Solid"
                                    Width="210px" BorderWidth="1px" Height="20px"></asp:TextBox>
                            </td>
                            <td class="style24">
                                &nbsp;
                            </td>
                            <td class="style20">
                                Access :
                            </td>
                            <td class="style19">
                                <telerik:RadComboBox ID="ddlAccessLevel" runat="server" Skin="Sunset" Height="50px">
                                    <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                                </telerik:RadComboBox>
                            </td>
                            <td class="style12">
                            </td>
                        </tr>
                        <tr>
                            <td class="style3" colspan="5">
                                <table style="width: 102%;">
                                    <tr>
                                        <td class="style35" colspan="4">
                                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDomainID"
                                                Display="Dynamic" ErrorMessage="please enter Domain ID"></asp:RequiredFieldValidator>
                                            &nbsp;<table style="width: 100%;">
                                                <tr>
                                                    <td class="style40">
                                                        &nbsp;
                                                    </td>
                                                    <td class="style42">
                                                        <asp:Button ID="Button1" runat="server" Text="Clear" Width="55px" BackColor="#F4EDE1"
                                                            BorderColor="#EC7C32" BorderStyle="Outset" BorderWidth="1px" CausesValidation="False"
                                                            Height="27px" OnClick="Button1_Click" />
                                                    </td>
                                                    <td class="style41">
                                                        <asp:Button ID="cmdUpdate" runat="server" Text="Update" BackColor="#F4EDE1" BorderColor="#EC7C32"
                                                            BorderStyle="Outset" BorderWidth="1px" Height="27px" Width="55px" OnClick="cmdUpdate_Click" />
                                                    </td>
                                                    <td class="style50">
                                                        <asp:Button ID="cmdCreate" runat="server" Text="Create" BackColor="#F4EDE1" BorderColor="#EC7C32"
                                                            BorderStyle="Outset" BorderWidth="1px" Height="27px" Width="55px" OnClick="cmdCreate_Click" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td style="text-align: right">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style39">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style29">
                                            &nbsp;</td>
                                        <td class="style33">
                                            &nbsp;</td>
                                        <td style="text-align: right">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style39">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style29">
                                            &nbsp;</td>
                                        <td class="style33">
                                            &nbsp;</td>
                                        <td style="text-align: right">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style39">
                                            &nbsp;
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style29">
                                            &nbsp;
                                        </td>
                                        <td class="style33">
                                            &nbsp;
                                        </td>
                                        <td style="text-align: right">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style57" colspan="4">
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            Upload Data</td>
                                        <td style="text-align: right">
                                            &nbsp;
                                        </td>
                                    </tr> --%>
                                    <tr>
                                        <td class="style39">
                                            Select Data:
                                            <td class="style27" colspan="4">
                                                <asp:DropDownList ID="ddl_uploaddatatype" runat="server" Height="20px" 
                                                    Width="216px">
                                                    <asp:ListItem Value="tbl_stars_data">Stars Data</asp:ListItem>
                                                   <asp:ListItem Value="tbl_movie_data">Movie Data</asp:ListItem>
                                                    <asp:ListItem Value="tbl_Boxoffice_Data">Boxoffice Data</asp:ListItem>
                                                    <asp:ListItem Value="tbl_100crClub">100cr Club</asp:ListItem>
                                                    <asp:ListItem Value="tbl_Boxoffice_Alltime">Boxoffice Alltime</asp:ListItem>
                                                    <asp:ListItem Value="tbl_Boxoffice_Gross">BoxOffice Gross</asp:ListItem>
                                                    <asp:ListItem Value="tbl_Movie_verdict">Movie Verdict</asp:ListItem>
                                                    <asp:ListItem Value="tbl_NewReleases">New Releases</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                    </tr>
                                    
                                    
                                    <tr>
                                        <td class="style39">
                                            Bulk Upload :
                                            <td class="style27" colspan="4">
                                                <table style="width: 100%;">
                                                    <tr>
                                                        <td class="style34">
                                                            <asp:FileUpload ID="FileUpload1" runat="server" Width="400px" />
                                                        </td>
                                                        <td>
                                                            <asp:Button ID="cmdValidate" runat="server" BackColor="#F4EDE1" BorderColor="#EC7C32"
                                                                BorderStyle="Outset" BorderWidth="1px" CausesValidation="False" OnClick="cmdValidate_Click"
                                                                Style="height: 24px" Text="Upload" Width="64px" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                    </tr>
                                    <tr>
                                        <td class="style39">
                                            &nbsp;<td class="style27" colspan="4">
                                                <asp:Label ID="lblUploadStatus" runat="server" style="color: #009900"></asp:Label>
                                            </td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <table style="width: 101%;" align="center">
            <tr>
                <td>
                    <table style="width: 98%; height: 381px;" align="left">
                        <tr>
                            <td class="style6">
                                &nbsp;
                            </td>
                            <td class="style4" rowspan="4">
                                <div style="height: 321px; width: 629px; overflow: scroll;">
                                    <asp:GridView ID="GridView1" runat="server" BackColor="Transparent" BorderColor="White"
                                        BorderWidth="1px" Caption="Validation Grid" CellPadding="3" CellSpacing="1" EmptyDataText="[blank]"
                                        Font-Bold="False" Font-Names="Verdana" Font-Size="XX-Small" GridLines="None"
                                        Height="302px" Style="margin-top: 0px; margin-left: 7px;" Width="620px" SelectedIndex="1">
                                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                                        <HeaderStyle BackColor="#EC7C32" Font-Bold="True" ForeColor="#E7E7FF" />
                                        <PagerSettings Mode="NumericFirstLast" Position="Top" />
                                        <PagerStyle BackColor="#C6C3C6" Font-Size="XX-Small" ForeColor="Black" HorizontalAlign="Left" />
                                        <RowStyle BackColor="#D8D8D8" BorderStyle="None" ForeColor="Black" />
                                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                                    </asp:GridView>
                                </div>
                            </td>
                            <td class="style10">
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                            </td>
                            <td class="style10">
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;
                            </td>
                            <td class="style10">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;
                            </td>
                            <td class="style10">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;
                            </td>
                            
                            <td class="style10">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;
                            </td>
                            <td class="style43">
                                &nbsp;
                            </td>
                            <td class="style10">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;
                            </td>
                            <td class="style43">
                                &nbsp;
                            </td>
                            <td class="style10">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
