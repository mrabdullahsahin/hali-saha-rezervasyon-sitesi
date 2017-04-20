<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="saham.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 65px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="post-meta">
        <h2>İletişim</h2>
        <div class="post-content">
            <br />
            Adres: Üniversite Mahallesi   Merkez/ELAZIĞ <br />
            Tel  No : 0212 422 22 22 – 0212 422 23 23 <br />
            Cep No: 0555 555 55 55 <br />
        

        <br /> <br />
        
        <form id="form1" runat="server">
            <div>
                
                <table class="style1">
                    <tr>
                        <td class="style2">Ad Soyad:  </td>
                        <td>
                            <asp:TextBox ID="txtAd" runat="server"></asp:TextBox>
                        </td>
                        
                        <td>&nbsp;</td>
                    </tr>
                    
                    <tr>
                        <td class="style2">E-posta:  </td>
                        <td>
                            <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
                        </td>
                        
                        <td>&nbsp;</td>
                    </tr>
                    
                    <tr>
                        <td class="style2">Konu:  </td>
                        <td>
                            <asp:TextBox ID="txtKonu" runat="server"></asp:TextBox>
                        </td>
                        
                        <td>&nbsp;</td>
                    </tr>
                    
                    <tr>
                        <td class="style2">Mesaj:  </td>
                        
                        <td>
                            <asp:TextBox ID="txtMesaj" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        
                        <td>&nbsp;</td>
                    </tr>
                    
                    <tr>
                        <td class="style2">&nbsp;</td>
                        
                        <td>
                            <asp:Button ID="btnGonder" runat="server" OnClick="btnGonder_Click" Text="Gönder" />
                        </td>
                        
                        <td>&nbsp;</td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="Label1" class="style2" runat="server" Text="                    "></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
        </form>
        </div>
    </div>
</asp:Content>
