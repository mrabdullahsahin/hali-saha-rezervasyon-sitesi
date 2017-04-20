<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="iletisimkutusu.aspx.cs" Inherits="saham.iletisimkutusu" %>
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
                    <FooterStyle CssClass="footer" />
                    <HeaderStyle CssClass="header" />
                    <PagerStyle CssClass="pager"/>
                    <RowStyle CssClass="row" />
                    <AlternatingRowStyle CssClass="alternate" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />

                    <Columns>
                        <asp:BoundField DataField="sirano"  HeaderText="Sıra No" />
                        <asp:BoundField DataField="adsoyad" HeaderText="Ad Soyad" />
                        <asp:BoundField DataField="eposta" HeaderText="E-Posta" />
                        <asp:BoundField DataField="konu" HeaderText="Konu" />
                        <asp:BoundField DataField="mesaj" HeaderText="Mesaj" />
                    </Columns>
                </asp:GridView>
            </div>        
</form>
</asp:Content>
