<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Principal.master" AutoEventWireup="true" CodeFile="Telemovel.aspx.cs" Inherits="Telemovel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="lefttable">

    </div>

    <div class="produtos">
        <asp:ListView ID="ListView1" runat="server" GroupItemCount="3" GroupPlaceholderID="groupPlaceHolder1"
            ItemPlaceholderID="itemPlaceHolder1">
            <LayoutTemplate>
                <table>
                    <asp:PlaceHolder runat="server" ID="groupPlaceHolder1">asp:PlaceHolder</asp:PlaceHolder>
                </table>
            </LayoutTemplate>
            <GroupTemplate>
                <tr>
                    <asp:PlaceHolder runat="server" ID="itemPlaceHolder1">asp:PlaceHolder</asp:PlaceHolder>
                </tr>
            </GroupTemplate>
            <ItemTemplate>
                <td>
                    <table style="display">
                        <tr>
                            <td>
                                <b><u><span class="nome"><%# Eval("Nome") %><br />
                                    <asp:Image class="displayimage" runat="server" ImageUrl='<%# Eval("Imagem", "~/img/{0}")%>' />
                                    <b>City: <span class="passe"><%# Eval("PalavraPasse") %><br />
                                        <b>Postal Code: <span class="dinheiro"><%# Eval("Dinheiro") %><br />
                                            <b>Country: <span class="email"><%# Eval("Email")%><br />
                                                <b>Phone: <span class="pais"><%# Eval("Pais")%><br /></td>
                        </tr>
                    </table>
                </td>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

