<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Report.aspx.cs" Inherits="SKY_Cardiff.frm_Report" EnableEventValidation="false" %>

<%@ Register src="Topmenu.ascx" tagname="Topmenu" tagprefix="uc1" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <style type="text/css">
        .style3
        {
            width: 82px;
            font-family: Verdana;
            font-size: small;
        }
        .style4
        {
            width: 577px;
        }
        .style6
        {
            width: 3px;
            height: 19px;
        }
        .style8
        {
            width: 3px;
            height: 247px;
        }
        .style10
        {
            width: 117px;
            height: 9px;
            font-family: Verdana;
            font-size: small;
            text-align: left;
        }
        .style12
        {
            height: 9px;
        }
        .style16
        {
            width: 109px;
        }
        .style17
        {
            height: 9px;
            width: 109px;
        }
        .style18
        {
            width: 170px;
        }
        .style19
        {
            height: 9px;
            width: 170px;
        }
        .style20
        {
            width: 109px;
            font-family: Verdana;
            font-size: small;
            text-align: left;
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
        .style21
        {
            width: 82px;
            font-family: Verdana;
            font-size: small;
            text-align: left;
        }
        .style22
        {
            width: 3px;
        }
        .style23
        {
            width: 41px;
        }
        .style24
        {
            height: 9px;
            width: 41px;
        }
        .style25
        {
            width: 191px;
            text-align: left;
        }
        .style26
        {
            width: 82px;
            height: 9px;
            font-family: Verdana;
            font-size: small;
            text-align: left;
        }
        .style27
        {
            width: 117px;
            height: 247px;
            font-family: Verdana;
            font-size: small;
            text-align: left;
        }
    </style>
</head>
<body bgcolor="#eeebe4">
    <form id="form1" runat="server" style="background-color: #FFFFFF">
    <div id="centered" style="border-color: #99CCFF">
    <div>
    
        <div style="text-align: left">
            <br />
                <asp:Image ID="Image1" runat="server" Height="78px" ImageUrl="~/IMG/SKY_logo.jpg"
                    Width="152px" Style="text-align: center" />
                <asp:Label ID="Label1" runat="server" BackColor="White" Font-Names="Calibri" 
                    Font-Size="XX-Large" ForeColor="#94AFAC" Text="reports"></asp:Label>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
            <uc1:Topmenu ID="Topmenu1" runat="server" />
    </div>
    
    </div>
    <table style="width:99%; height: 190px;">
        <tr>
            <td>
                <table style="width:99%;">
                    <tr>
                        <td class="style21">
                            Process :</td>
                        <td class="style25">
                            <telerik:RadComboBox ID="ddlProcess" Runat="server" Skin="Sunset">
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="Value" Value="sp_report_Value" />
                                    <telerik:RadComboBoxItem runat="server" Text="Upgrades" 
                                        Value="sp_report_Upgrades" />
                                    <telerik:RadComboBoxItem runat="server" Text="Value Dashboard" 
                                        Value="Value Dashboard" />
                                    <telerik:RadComboBoxItem runat="server" Text="Upgrades Dashboard" 
                                        Value="Upgrades Dashboard" />
                                    <telerik:RadComboBoxItem runat="server" Text="UserList" 
                                        Value="sp_report_UserList" />
                                </Items>
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                            </telerik:RadComboBox>
                        </td>
                        <td class="style23">
                            &nbsp;</td>
                        <td class="style20">
                            Manager :</td>
                        <td class="style18">
                            <telerik:RadComboBox ID="ddlManager" Runat="server" Skin="Sunset" Height="70px">
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                            </telerik:RadComboBox>
                        </td>
                        <td>
                            <div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="style21">
                            Start Date :</td>
                        <td class="style25">
                            <telerik:RadDateTimePicker ID="dtpFrom" Runat="server" 
                                Culture="English (United States)" FocusedDate="2012-05-20" ForeColor="#F9811C" 
                                MaxDate="2025-12-31" MinDate="2010-01-01" Skin="Sunset" 
                                style="text-align: left" Width="250px">
                                <Calendar skin="Sunset" UseColumnHeadersAsSelectors="False" 
                                    UseRowHeadersAsSelectors="False" ViewSelectorText="x">
                                </Calendar>
                                <TimeView CellSpacing="-1">
                                </TimeView>
                                <TimePopupButton bordercolor="#F9811C" forecolor="#FA8620" HoverImageUrl="" 
                                    ImageUrl="" />
                                <DatePopupButton HoverImageUrl="" ImageUrl="" />
                                <DateInput DateFormat="dd/MMM/yyyy  hh:mm tt">
                                    <InvalidStyle BackColor="Red" />
                                </DateInput>
                            </telerik:RadDateTimePicker>
                        </td>
                        <td class="style23">
                            &nbsp;</td>
                        <td class="style20">
                            TL :</td>
                        <td class="style18">
                            <telerik:RadComboBox ID="ddlTL" Runat="server" Skin="Sunset" Height="70px">
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
                            </telerik:RadComboBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style26">
                            End Date :</td>
                        <td class="style25">
                            <telerik:RadDateTimePicker ID="dtpTo" Runat="server" 
                                Culture="English (United States)" FocusedDate="2012-05-20" MaxDate="2025-12-31" 
                                MinDate="2010-01-01" Skin="Sunset" style="text-align: left" Width="250px">
                                <Calendar skin="Sunset" UseColumnHeadersAsSelectors="False" 
                                    UseRowHeadersAsSelectors="False" ViewSelectorText="x">
                                </Calendar>
                                <TimeView CellSpacing="-1">
                                </TimeView>
                                <TimePopupButton HoverImageUrl="" ImageUrl="" />
                                <DatePopupButton HoverImageUrl="" ImageUrl="" />
                                <DateInput DateFormat="dd/MMM/yyyy  hh:mm tt">
                                </DateInput>
                            </telerik:RadDateTimePicker>
                        </td>
                        <td class="style24">
                            &nbsp;</td>
                        <td class="style17">
                            &nbsp;</td>
                        <td class="style19">
                            &nbsp;</td>
                        <td class="style12">
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style25">
                            &nbsp;</td>
                        <td class="style23">
                            &nbsp;</td>
                        <td class="style16">
                            <asp:Button ID="cmdGenerate" runat="server"  
                                Text="Generate" Width="104px" onclick="cmdGenerate_Click" />
                        </td>
                        <td style="text-align: right">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnExport" runat="server"  
                                Text="Excel Export" Width="104px" onclick="btnExport_Click1" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
    <table style="width:100%;" align="center">
        <tr>
            <td>
                <table style="width:100%; height: 381px;">
                    <tr>
                        <td class="style6">
                            &nbsp;</td>
                        <td class="style4" rowspan="4">
                            <div style="overflow: scroll; position: relative; top: 0px; left: 0px; height: 355px; width: 627px;">
                                <asp:GridView ID="GridView1" runat="server" 
    BackColor="Transparent" BorderColor="White" 
                                BorderWidth="1px" Caption="Reporting Grid" 
    CellPadding="3" CellSpacing="1" 
                                EmptyDataText="[blank]" Font-Bold="False" Font-Names="Verdana" 
                                Font-Size="XX-Small" GridLines="None" Height="302px" 
                                style="margin-top: 0px; margin-left: 7px;" 
    Width="616px" AllowPaging="True" 
                                    OnPageIndexChanging="GridView1_PageIndexChanging" >
                                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                                    <HeaderStyle BackColor="#EC7C32" Font-Bold="True" ForeColor="#E7E7FF" />
                                    <PagerSettings Mode="NumericFirstLast" Position="Top" />
                                    <PagerStyle BackColor="#C6C3C6" Font-Size="XX-Small" ForeColor="Black" 
                                    HorizontalAlign="Left" />
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
                        <td class="style27">
                        </td>
                    </tr>
                    <tr>
                        <td class="style22">
                            &nbsp;</td>
                        <td class="style10">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style22">
                            &nbsp;</td>
                        <td class="style10">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style22">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style10">
                            &nbsp;</td>
                    </tr>
                </table>
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
