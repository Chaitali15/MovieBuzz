<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Topmenu.ascx.cs" Inherits="MyProject.Topmenu" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<table>
<tr><td>
    <asp:Image ID="Image1" runat="server" Height="196px" 
        ImageUrl="~/IMG/Homebanner1.jpg" Width="674px" />
    </td></tr>
</table>
<telerik:RadMenu ID="RadMenu1" Runat="server" ExpandDelay="10" Skin="Sunset" 
    style="top: 0px; left: 0px; height: 29px; width: 679px" CollapseDelay="50" 
    >
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
    <Items>
        <telerik:RadMenuItem runat="server" Text="Upload" 
            NavigateUrl="frm_ManageUser.aspx">
            <Items>
                <telerik:RadMenuItem runat="server" Text="Upload Files" 
                    NavigateUrl =frm_manageuser.aspx Visible="False">
                </telerik:RadMenuItem>
            </Items>
        </telerik:RadMenuItem>
        <telerik:RadMenuItem runat="server" NavigateUrl="Logout.aspx" Text="Logout">
        </telerik:RadMenuItem>
    </Items>
</telerik:RadMenu>

