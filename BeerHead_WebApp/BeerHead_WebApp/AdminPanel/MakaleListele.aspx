<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="MakaleListele.aspx.cs" Inherits="BeerHead_WebApp.AdminPanel.MakaleListele" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="assets/css/FormStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>
        <h2 style="margin:20px 0px 0px 250px">Makale Listesi</h2>
        <hr style="margin: 20px 250px" />
        <asp:ListView ID="lv_makaleler" runat="server" OnItemCommand="lv_makaleler_ItemCommand">
            <LayoutTemplate>
                <table class="formTable" cellpadding="0" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Resim</th>
                            <th>No</th>
                            <th>Başlık</th>
                            <th>Kategori</th>
                            <th>Yazar</th>
                            <th>Görüntüleme Sayısı</th>
                            <th>Ekleme Tarihi</th>
                            <th>Yayında</th>
                            <th>Seçenekler</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:PlaceHolder ID="ItemPlaceHolder" runat="server"></asp:PlaceHolder>
                    </tbody>
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
                     <td><img src="../MakaleResimleri/<%# Eval("KapakResim") %>" width="50" /></td>
                    <td><%# Eval("ID") %></td>
                    <td><%# Eval("Baslik") %></td>
                    <td><%# Eval("Kategori") %></td>
                    <td><%# Eval("Yazar") %></td>
                    <td><%# Eval("GoruntulemeSayi") %></td>
                    <td><%# Eval("EklemeTarihStr") %></td>
                    <td><%# Eval("YayinDurumuStr") %></td>
                    <td>
                        <a href='MakaleDuzenle.aspx?mid=<%# Eval("ID") %>' class="btn_duzenle">Düzenle</a>
                        <asp:LinkButton ID="lbtn_sil" runat="server" CssClass="btn_sil" CommandArgument='<%# Eval("ID") %>' CommandName="sil">Sil</asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>
