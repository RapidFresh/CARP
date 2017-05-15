<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Principal.master" AutoEventWireup="true" CodeFile="Telemovel.aspx.cs" Inherits="Telemovel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

   <div class="productlist">
        <div class="leftcontainer">
            <div class="lefttable">
                <div class="filtros ">
                    <div class="principaltitlespecial">
                        <a class="nicechecktitle principaltitle">Filtrar Por:</a>
                    </div>
                    <br />
                    <br />
                    <a class="nicechecktitle">Tablets</a><br style="line-height: 30px;">
                    <label class="control control--checkbox">
                        Novidade
                        <input type="checkbox" />
                        <div class="control__indicator nicecheck"></div>
                    </label>
                    <label class="control control--checkbox">
                        Promoção
                        <input type="checkbox" />
                        <div class="control__indicator nicecheck"></div>
                    </label>
                    <br>
                    <br>
                    <a class="nicechecktitle">Sistema Operativo</a><br style="line-height: 30px;">
                    <label class="control control--checkbox">
                        Android
                        <input type="checkbox" />
                        <div class="control__indicator nicecheck"></div>
                    </label>
                    <label class="control control--checkbox">
                        iOS
                        <input type="checkbox" />
                        <div class="control__indicator nicecheck"></div>
                    </label>
                    <label class="control control--checkbox">
                        Windows
                        <input type="checkbox" />
                        <div class="control__indicator nicecheck"></div>
                    </label>
                    <br>
                    <br>
                    <a class="nicechecktitle">Marca</a><br style="line-height: 30px;">
                    <label class="control control--checkbox">
                        ASUS
                        <input type="checkbox" />
                        <div class="control__indicator nicecheck"></div>
                    </label>
                    <label class="control control--checkbox">
                        Apple
                        <input type="checkbox" />
                        <div class="control__indicator nicecheck"></div>
                    </label>
                    <br>
                    <br>
                    <a class="nicechecktitle">Preço</a><br style="line-height: 30px;">
                    <label class="control control--checkbox">
                        0€ - ...
                      <input type="radio" name="radio" checked />
                        <div class="control__indicator nicecheck"></div>
                    </label>
                    <label class="control control--checkbox">
                        0€ - 100€
                      <input type="radio" name="radio" />
                        <div class="control__indicator nicecheck"></div>
                    </label>
                    <label class="control control--checkbox">
                        100€ - 200€
                      <input type="radio" name="radio" />
                        <div class="control__indicator nicecheck"></div>
                    </label>
                    <label class="control control--checkbox">
                        300€ - 400€
                      <input type="radio" name="radio" />
                        <div class="control__indicator nicecheck"></div>
                    </label>
                    <label class="control control--checkbox">
                        400€ - 500€
                      <input type="radio" name="radio" />
                        <div class="control__indicator nicecheck"></div>
                    </label>
                    <label class="control control--checkbox">
                        500€ - 750€
                      <input type="radio" name="radio" />
                        <div class="control__indicator nicecheck"></div>
                    </label>
                    <label class="control control--checkbox">
                        750€ - 1000€
                      <input type="radio" name="radio" />
                        <div class="control__indicator nicecheck"></div>
                    </label>
                    <label class="control control--checkbox">
                        1000€ - ...
                      <input type="radio" name="radio" />
                        <div class="control__indicator nicecheck"></div>
                    </label>
                </div>
            </div>
        </div>
        <div class="rightcontainer">
            <nav class="product-filter">
                <h1>Tablets</h1>
                <a class="pagesnumber">1</a>
                <a class="pagesnumber">2</a>
                <a class="pagesnumber">3</a>
            </nav>
            <section class="products">
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
                        <div class="product-card">
                            <div class="product-image">
                                <a href="<%# String.Format("Produtos.aspx?Id={0}", Eval("Id")) %>"">
                                    <asp:Image runat="server"  ImageUrl='<%# Eval("ImagemPrincipal", "~/img/{0}")%>' /></a>
                            </div>
                            <div class="product-info">
                                <a href="Produtos.aspx">
                                    <h5><span class="nome"><%# Eval("Marca") %>&nbsp;<%# Eval("Modelo") %></h5>
                                </a>
                            </div>
                            <div class="simpleCart_shelfItem" style="width: 80%; margin: 0px 13.5%">
                                <p><span><%# Eval("Preço") %></span> <a class="item_price" style="font-size: 25px;"><%# ((decimal)Eval("Preço")-(decimal)Eval("Preço")*((decimal)(int)Eval("Desconto")/100)).ToString("N2") %></a></p>
                                <form action="#" method="post">
                                    <input type="hidden" name="cmd" value="_cart" />
                                    <input type="hidden" name="add" value="1" />
                                    <input type="hidden" name="w3ls_item" value="<%# Eval("Marca") %>&nbsp;<%# Eval("Modelo") %>" />
                                    <input type="hidden" name="amount" value="<%# ((decimal)Eval("Preço")-(decimal)Eval("Preço")*((decimal)(int)Eval("Desconto")/100)).ToString("N2") %>" />
                                    <button type="submit" class="w3ls-cart">Adicionar ao carrinho</button>
                                </form>
                            </div>
                        </div>

                    </ItemTemplate>
                </asp:ListView>
            </section>
        </div>
    </div>
</asp:Content>

