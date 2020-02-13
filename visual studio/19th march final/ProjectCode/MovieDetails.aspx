<%@ Page Language="C#" MasterPageFile="~/Site2.Master"  AutoEventWireup="True" CodeBehind="MovieDetails.aspx.cs" Inherits="MyProject.MovieDetails" %>
<%@ Register
    Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit"
    TagPrefix="ajaxToolkit" %>


<%@ Register assembly="System.Web.Ajax" namespace="System.Web.UI" tagprefix="asp" %> 
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"  >
    <div id="SLIDER1">
    <script type="text/javascript">
    
    </script>
    <table style="width:100%;" >
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                <span class="style13">Search Movie By Name... :
    &nbsp;</span><asp:TextBox ID="txtSearch" runat="server" Width="388px" BorderColor="#999999" 
                                    BorderStyle="Solid" BorderWidth="1px" 
        MaxLength="50" Font-Size="Small" 
                                    Height="23px" BackColor="#FFFFCC" 
        ontextchanged="txtSearch_TextChanged" ForeColor="#993300"></asp:TextBox>&nbsp; <asp:ImageButton 
        ID="ImageButton1" runat="server" Height="30px" 
            ImageUrl="~/IMG/red-search-button.png" onclick="ImageButton1_Click" 
            Width="34px" />
                                        </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
            </td>
            <td class="style10" style="text-align: center">
                                       <ajaxToolkit:AutoCompleteExtender ID="txtSearch_AutoCompleteExtender" 
                                    runat="server" ServiceMethod="SearchCustomers" TargetControlID="txtSearch" 
                                    UseContextKey="True" EnableCaching="False">
                                </ajaxToolkit:AutoCompleteExtender>
            </td>
            <td class="style10">
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td style="text-align: center">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td style="text-align: center">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td style="text-align: center">
                <asp:Image ID="Image1" runat="server" 
        ImageUrl="" BorderStyle="Dotted" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td style="text-align: center">
               
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td style="text-align: center" class="style12">
                &nbsp; <asp:Label ID="lbl47" runat="server" ForeColor="Red" Font-Bold="true" Font-Italic="true" Font-Names="Georgia"></asp:Label></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                                      <asp:GridView ID="gridControl" runat="server" AutoGenerateColumns="False" 
                                          Font-Names="Verdana" Font-Size="Small" CellPadding="2" 
                                          ForeColor="#333333" Font-Underline="False" 
                                          Width="946px">
                                          <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                          <Columns>
                                              <asp:BoundField DataField="Title" HeaderText="Movie Name" />
                                              <asp:BoundField DataField="Genre" HeaderText="Genre" />
                                              <asp:BoundField DataField="Director" HeaderText="Director" />
                                              <asp:BoundField DataField="Cast" HeaderText="Cast" />
                                              <asp:BoundField DataField="Verdict" HeaderText="Movie Verdict" />
                                              <asp:BoundField DataField="ReleaseDate" HeaderText="Release Date" />
                                              <asp:BoundField DataField="Synopsis" HeaderText="Synopsis" />
                                          </Columns>
                                          <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                          <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                          <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                          <HeaderStyle BackColor="Black" Font-Bold="False" ForeColor="White" 
                                              Font-Names="Verdana" Font-Size="Small" />
                                          <AlternatingRowStyle BackColor="White" />
                                      </asp:GridView>
                                      </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp; </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td style="text-align: center" align="center">
                                                                                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
        
</div>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    
    <style type="text/css">
        .style4
        {
            height: 123px;
        }
        .style6
        {
            width: 4px;
        }
        .style8
        {
            text-align: center;
            font-family: Verdana;
            font-size: medium;
        }
        .style9
        {
            width: 4px;
            height: 23px;
        }
        .style10
        {
            height: 23px;
        }
        .style11
        {
            text-align: center;
            font-family: Verdana;
            font-size: medium;
            color: #FFFFCC;
        }
        .style12
        {
            font-family: Verdana;
            color: #FFFFCC;
            font-size: medium;
        }
        .style13
        {
            color:Black;
            font-weight:bold;
        }
    </style>

    
</asp:Content>
