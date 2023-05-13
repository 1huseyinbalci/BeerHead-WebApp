<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UyeGiris.aspx.cs" Inherits="BeerHead_WebApp.UyeGiris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="loginPanel">
        <asp:Panel ID="pnl_basarisiz" runat="server" CssClass="pnl_basarisiz" Visible="false">
            <label>Giriş Başarısız</label>
        </asp:Panel>
        <div class="left"></div>
         <div class="right">
            <div class="row">
                 <h3 style="color:#D9751E">Hesabına Giriş Yap</h3>
             <br />
             <p></p>
            </div>
             <div class="row">
                  <asp:TextBox ID="tb_kullaniciAdi" runat="server" CssClass="formInput" placeholder="Kullanıcı Adınız" ></asp:TextBox>
             </div>
             <div class="row">
                  <asp:TextBox ID="tb_sifre" runat="server" CssClass="formInput" TextMode="Password" placeholder="Şifreniz"></asp:TextBox>
             </div>
             <div class="row">
                  <asp:LinkButton ID="lbtn_giris" runat="server" CssClass="formButton" OnClick="lbtn_giris_Click">Hesabına Giriş Yap</asp:LinkButton>
             </div>
        </div>
        <div style="clear:both"></div>
    </div>
</asp:Content>
