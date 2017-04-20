<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="onaybekleyenler.aspx.cs" Inherits="saham.onaybekleyenler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    #form1 {
            width: 980px;
        }
    /* GridView */
    .grid caption, tbody, tfoot, thead, tr, th, td,form {
        margin: 0;
        padding: 2px;
        border: 0;
        outline: 0;
        color:#333;
        font-size:12px;
    }
    .grid a:hover{color:#008aeb}
    .grid{border:none;width:100%;}
    .grid .header{background-color:#e5e5e5;height:30px;cursor:pointer;text-align:left}
    .grid .pager table{background-color:#333333;margin:5px auto}
    .grid .pager table td{font-size:15px;background-color:#3e3e3e}
    .grid .pager table td span{display:block;width:25px;height:20px;text-align:center;color:#868686;background-color:#333333}
    .grid .pager table td a{display:block;width:25px;height:20px;text-align:center;color:White}
    .grid .pager table td a:hover{background-color:#333333}
    .grid .row{}
    .grid .alternate{background-color:#f6f6f6;}
    .grid .alternate:hover,.grid .row:hover{background-color:#a8a8a8;cursor:pointer;}
    .grid .footer{background-color:#e3f1f8;font-weight:bold;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <form id="form1" runat="server">
        
        <div class="post-meta">
            <div class="post-content">
                <asp:GridView ID="GridView1" runat="server" CssClass="grid" AutoGenerateColumns="False">

                    <HeaderStyle CssClass="header" />
                    <RowStyle CssClass="row" />
                    <AlternatingRowStyle CssClass="alternate" />
                    <FooterStyle CssClass="footer" />
                    <PagerStyle CssClass="pager" />

                    <Columns>
                        
                        <asp:TemplateField>

                            <HeaderTemplate> Rezervasyon'u Onayla </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Button ID="rezervasyon_onayla" Text="Onayla" runat="server" OnClick="rezervasyon_onayla_Click1"/>
                            </ItemTemplate>
                        </asp:TemplateField>

                       <asp:BoundField DataField="sirano" HeaderText="Sıra No" InsertVisible="False" ReadOnly="True" SortExpression="sirano" />
                        <asp:BoundField DataField="adsoyad" HeaderText="Ad Soyad" SortExpression="adsoyad" />
                        <asp:BoundField DataField="eposta" HeaderText="E-Posta" SortExpression="eposta" />
                        <asp:BoundField DataField="telefon" HeaderText="Telefon" SortExpression="telefon" />
                        <asp:BoundField DataField="tarih" HeaderText="Tarih" SortExpression="tarih" />
                        <asp:BoundField DataField="saat" HeaderText="Saat" SortExpression="saat" />
                        <asp:BoundField DataField="aciklama" HeaderText="Açıklama" SortExpression="aciklama" />
                        <asp:BoundField DataField="onay" HeaderText="Onay Durumu" SortExpression="onay" />
                    </Columns>

                </asp:GridView>

            </div>
    </form>
</asp:Content>
