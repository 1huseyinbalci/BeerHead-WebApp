<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UyeKayit.aspx.cs" Inherits="BeerHead_WebApp.UyeKayit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="registerPanel">
        <div class="row">
            <h1 style="color:#D9751E">Üye Ol</h1>
            <br />
            
        </div>
       <div class="row">
                <table class="formTable">
                     <asp:Panel ID="pnl_basarili" runat="server" CssClass="pnl_basarili" Visible="false">
                <label>Başarıyla Üye Oldunuz</label>
            </asp:Panel>
            <asp:Panel ID="pnl_basarisiz" runat="server" CssClass="pnl_basarisiz" Visible="false">
                <asp:Label ID="lbl_mesaj" runat="server"></asp:Label>
            </asp:Panel>
                    <tr>
                        <td>İsim</td>
                        <td>
                            <asp:TextBox ID="tb_isim" runat="server" CssClass="formInput"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Soyad</td>
                        <td>
                            <asp:TextBox ID="tb_soyad" runat="server" CssClass="formInput"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td>Kullanıcı Adı</td>
                        <td>
                            <asp:TextBox ID="tb_kullaniciAdi" runat="server" CssClass="formInput"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Mail</td>
                        <td>
                            <asp:TextBox ID="tb_mail" runat="server" CssClass="formInput"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td>Şifre</td>
                        <td>
                            <asp:TextBox ID="tb_sifre" runat="server" CssClass="formInput"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
       
        <div class="row">
            <asp:LinkButton ID="lbtn_giris" runat="server" OnClick="lbtn_giris_Click" CssClass="formButton">Üye Ol</asp:LinkButton>
        </div>
    </div>
</asp:Content>
