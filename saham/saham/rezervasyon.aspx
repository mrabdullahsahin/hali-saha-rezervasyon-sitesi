<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="rezervasyon.aspx.cs" Inherits="saham.rezervasyon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1{
            margin-bottom: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<div class="post-meta">
    <h2>Rezervasyon</h2>
    <br /> <br />
    <div class="post-content">

        <form id="form1" runat="server">
            <div>
                
                <table class="style1">
                    <tr>
                        <td class="style2">* Ad Soyad:</td>
                        <td>
                            <asp:TextBox ID="txtAd" runat="server"></asp:TextBox>
                        </td>
                        
                    </tr> 
                    
                    <tr>
                        <td class="style2">* E-posta:</td>
                        <td>
                            <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
                        </td>

                    </tr>
                    
                    <tr>
                        <td class="style2">* Telefon:</td>
                        <td>
                            <asp:TextBox ID="txtTelefon" runat="server" MaxLength="11"></asp:TextBox>
                        </td>

                    </tr>
                    
                    <tr>
                        <td class="style2">Tarih:</td>
                        
                        <td>
                            <asp:Label ID="lblSeciliTarih" runat="server" Text="Seçili Tarih:"></asp:Label> <br />
                            <asp:Button ID="btnOncekiGun" runat="server" OnClick="btnOncekiGun_Click" Text="Önceki Gün" />
                            <asp:Button ID="btnSonrakiGun" runat="server" OnClick="btnSonrakiGun_Click" Text="Sonraki Gün" />
                        </td>
                    </tr> 

                    <tr>
                        <td class="style2">* Saat:</td>
                        
                        <td>
                            <asp:DropDownList ID="dropSaat" runat="server">
                                <asp:ListItem>07:00 - 08:00</asp:ListItem>
                                <asp:ListItem>08:00 - 09:00</asp:ListItem>
                                <asp:ListItem>09:00 - 10:00</asp:ListItem>
                                <asp:ListItem>10:00 - 11:00</asp:ListItem>
                                <asp:ListItem>11:00 - 12:00</asp:ListItem>
                                <asp:ListItem>12:00 - 13:00</asp:ListItem>
                                <asp:ListItem>13:00 - 14:00</asp:ListItem>
                                <asp:ListItem>14:00 - 15:00</asp:ListItem>
                                <asp:ListItem>15:00 - 16:00</asp:ListItem>
                                <asp:ListItem>16:00 - 17:00</asp:ListItem>
                                <asp:ListItem>17:00 - 18:00</asp:ListItem>
                                <asp:ListItem>18:00 - 19:00</asp:ListItem>
                                <asp:ListItem>19:00 - 20:00</asp:ListItem>
                                <asp:ListItem>20:00 - 21:00</asp:ListItem>
                                <asp:ListItem>21:00 - 22:00</asp:ListItem>
                                <asp:ListItem>22:00 - 23:00</asp:ListItem>
                                <asp:ListItem>23:00 - 00:00</asp:ListItem>
                            </asp:DropDownList>
                        </td>

                    </tr>

                    <tr>
                        <td class="style2">* Açıklama:</td>
                        
                        <td>
                            <asp:TextBox ID="txtAciklama" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>

                    </tr>
                    
                    <tr>
                        <td class="style2"></td>
                        
                        <td>
                            <asp:Button ID="btnRezervasyonYap" runat="server" OnClick="btnRezervasyonYap_Click" Text="Rezervasyon Yap" />
                        </td>

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
    
    <%--<div class="post-meta">
        <h2>Rezervasyon</h2> <br />
        <div class="post-content">
            <div id="Conte>
                <form method="post" action="#" id="rezervform">
                    <div class="row controls">
                        <div class="span4 control-group">
                            <label>Ad Soyad *</label>
                            <input name="ad" type="text" id="ContentPlaceHolder1_name" data-msg-required="Ad Soyad." maxlength="100" class="span4" />
                        </div>
                    </div>

                    <div class="row controls">
                        <div class="span4 control-group">
                            <label>E-Posta *</label>
                            <input name="mail" type="text" id="ContentPlaceHolder1_email" data-msg-required="E-Posta." data-msg-email="geçerli bir eposta giriniz." maxlength="100" class="span4" />
                        </div>
                    </div>

                    <div class="row controls">
                        <div class="span4 control-group">
                            <label>Telefon</label>
                            <input name="telefon" type="text" id="ContentPlaceHolder1_Telefon" data-msg-required="Telefon." maxlength="100" class="span4" />
                        </div>
                    </div>

                    <div class="row controls">
                        <div class="span4 control-group">
                            <label>Tarih</label>
                             <input name="tarih" type="text" id="datepicker" class="span4" />
                        </div>
                    </div>

                        <div>
                            <label>Saat</label>
                            <select name="saat">
                                <option value="Seçiniz..">Seçiniz..</option>
                                <option value="07:00-08:00">07:00-08:00</option>
                                <option value="08:00-09:00">08:00-09:00</option>
                                 <option value="09:00-10:00">09:00-10:00</option>
                                <option value="10:00-11:00">10:00-11:00</option>
                                <option value="11:00-12:00">11:00-12:00</option>
                                <option value="12:00-13:00">12:00-13:00</option>
                                 <option value="13:00-14:00">13:00-14:00</option>
                                 <option value="14:00-15:00">14:00-15:00</option>
                                <option value="15:00-16:00">15:00-16:00</option>
                                <option value="16:00-17:00">16:00-17:00</option>
                                 <option value="17:00-18:00">17:00-18:00</option>
                                <option value="18:00-19:00">18:00-19:00</option>
                                <option value="19:00-20:00">19:00-20:00</option>
                                <option value="20:00-21:00">20:00-21:00</option>
                                <option value="21:00-22:00">21:00-22:00</option>
                                <option value="22:00-23:00">22:00-23:00</option>
                                <option value="23:00-24:00">23:00-24:00</option>
                                <option value="24:00-01:00">24:00-01:00</option>
                                <option value="01:00-02:00">01:00-02:00</option>
                                <option value="02:00-03:00">02:00-03:00</option>
                                <option value="03:00-04:00">03:00-04:00</option>
                                <option value="04:00-05:00">04:00-05:00</option>
                                <option value="05:00-06:00">05:00-06:00</option>
                                <option value="06:00-07:00">06:00-07:00</option>
                            </select>
                        </div>
                    
                    <div class="row controls">
                        <div class="span6 control-group">
                            <label>Açıklama *</label>
                            <textarea name="mesaj" id="ContentPlaceHolder1_message" maxlength="5000" data-msg-required="Mesaj." rows="10" class="span6"></textarea>
                        </div>
                    </div>
                    <div class="btn-toolbar">
                        <input type="submit" name="gonder" value="Gönder" id="ContentPlaceHolder1_btnGonder" class="btn btn-primary btn-large" />
                    </div>
                </form>
            </div>
        </div>
    </div>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
