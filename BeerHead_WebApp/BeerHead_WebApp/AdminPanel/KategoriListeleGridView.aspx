<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="KategoriListeleGridView.aspx.cs" Inherits="BeerHead_WebApp.AdminPanel.KategoriListeleGridView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div style="margin:40px 0px 0px 250px">
        <asp:GridView ID="gv_Kategoriler" runat="server" Width="98%">
            <HeaderStyle BackColor="#D9751E" />
        </asp:GridView>
    </div>
</asp:Content>
