<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="saham.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="post-meta">
        <h2>Admin Girişi</h2>
        <div class="post-content">
        <br /> <br />
        
        <form id="form1" runat="server">
            <div>
                
                <table class="style1">
                    <tr>
                        <td class="style2">Kullanıcı Adı:  </td>
                        <td>
                            <asp:TextBox ID="txtAd" runat="server"></asp:TextBox>
                        </td>
                        
                        <td>&nbsp;</td>
                    </tr>
                    
                    <tr>
                        <td class="style2">Şifre:  </td>
                        <td>
                            <asp:TextBox ID="txtSifre"  runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">&nbsp;</td>
                        
                        <td>
                            <asp:Button ID="btnGiris" runat="server" OnClick="btnGiris_Click" Text="Giriş Yap" />
                        </td>
                        
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
        </form>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
