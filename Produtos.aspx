<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Principal.master" AutoEventWireup="true" CodeFile="Produtos.aspx.cs" Inherits="Produtos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ListView ID="ListView1" runat="server" GroupItemCount="1" GroupPlaceholderID="groupPlaceHolder1"
        ItemPlaceholderID="itemPlaceHolder1">
        <ItemTemplate>
            <div class="containerdes">


                <div class="desitem">
                    <div id="vslider">
                        <div id="vslidernav">
                            <ul>
                                <a id="1">
                                    <li>
                                    <asp:Image runat="server"  ImageUrl='<%# Eval("ImagemPrincipal", "~/img/{0}")%>' /></li>
                                </a>
                                <a id="2">
                                    <li>
                                        <img src="img/umi2.jpg" alt="Grey"></li>
                                </a>
                                <a id="3">
                                    <li>
                                        <img src="img/umi3.jpg" alt="Blue"></li>
                                </a>
                                <a id="4">
                                    <li>
                                        <img src="img/umi4.jpg" alt="Gold"></li>
                                </a>
                                <a id="5">
                                    <li>
                                        <img src="img/umi5.jpg" alt="Detail"></li>
                                </a>
                            </ul>
                        </div>
                        <div id="vsliderboxes">
                            <div id="vsliderboxs-inner">
                                <div id="box1" class="active">
                                    <a href="<%# String.Format("Produtos.aspx?Id={0}", Eval("Id")) %>"">
                                    <asp:Image runat="server"  ImageUrl='<%# Eval("ImagemPrincipal", "~/img/{0}")%>' /></a>
                                </div>
                                <div id="box2" class="inactive">
                                    <img src="img/umi2.jpg" alt="Grey">
                                </div>
                                <div id="box3" class="inactive">
                                    <img src="img/umi3.jpg" alt="Blue">
                                </div>
                                <div id="box4" class="inactive">
                                    <img src="img/umi4.jpg" alt="Gold">
                                </div>
                                <div id="box5" class="inactive">
                                    <img src="img/umi5.jpg" alt="Detail">
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="descprod">
                        <div class="l20 ptitle"><a><%# Eval("Marca") %>&nbsp;<%# Eval("Modelo") %></a></div>
                        <div class="l20 ppricenew"><a><%# ((decimal)Eval("Preço")-(decimal)Eval("Preço")*((decimal)(int)Eval("Desconto")/100)).ToString("N2") %>€</a></div>
                        <div class="l20 ppriceold"><a><%# Eval("Preço") %>€</a></div>
                        <div class="pdesb">
                            <div class="l20 pdis"><a class="uppercase">Disponivel</a></div>
                            <div class="l20 pdes"><a><%# Eval("Descrição") %></a></div>
                            <div class="l20 pcar"><a> - Ecrã:</a><a> <%# Eval("EcraDimensao") %>'</a></a></div>
                            <div class="l20 pcar"><a> - Câmara Principal:</a><a> <%# Eval("CamaraResolucao") %>MB</a></div>
                            <div class="l20 pcar"><a> - Processador:</a><a> <%# Eval("Processador") %></a></div>
                            <div class="l20 pcar"><a> - Memória RAM:</a><a> <%# Eval("MemoriaRAM") %>GB</a></div>
                            <div class="l20 pver seemore rhref" style="margin-top: 15px;"><a style="cursor:pointer;text-decoration: underline;"> Ver mais caracteristicas</a></div>
                            <form action="#" method="post" class="pcarrinho rhref ">
                                    <input type="hidden" name="cmd" value="_cart" />
                                    <input type="hidden" name="add" value="1" />
                                    <input type="hidden" name="w3ls_item" value="<%# Eval("Marca") %>&nbsp;<%# Eval("Modelo") %>" />
                                    <input type="hidden" name="amount" value="<%# ((decimal)Eval("Preço")-(decimal)Eval("Preço")*((decimal)(int)Eval("Desconto")/100)).ToString("N2") %>" />
                                    <button type="submit" class="w3ls-cart" style="background-color: transparent;border: none;width: 100%;height: 100%;">Adicionar ao carrinho</button>
                                </form>

                        </div>
                    </div>
                </div>

                <div class="containertecheader">
                    <div class="headerdesname"><a><a><%# Eval("Marca") %>&nbsp;<%# Eval("Modelo") %></a></div>
                </div>

                <div class="containertec">
                    <div class="left50">
                        <div class="l20 stitle"><a>Caracteristicas SET1</a></div>
                        <div class="l20 pcar"><a>Nome da cat:</a><a>Caracteristica</a></div>
                        <div class="l20 pcar"><a>Nome da cat:</a><a>Caracteristica</a></div>
                        <div class="l20 pcar"><a>Nome da cat:</a><a>Caracteristica</a></div>
                        <div class="l20 pcar"><a>Nome da cat:</a><a>Caracteristica</a></div>

                        <div class="l20 stitle"><a>Caracteristicas SET2</a></div>
                        <div class="l20 pcar"><a>Nome da cat:</a><a>Caracteristica</a></div>
                        <div class="l20 pcar"><a>Nome da cat:</a><a>Caracteristica</a></div>
                        <div class="l20 pcar"><a>Nome da cat:</a><a>Caracteristica</a></div>
                        <div class="l20 pcar"><a>Nome da cat:</a><a>Caracteristica</a></div>
                        <div class="l20 pcar"><a>Nome da cat:</a><a>Caracteristica</a></div>
                        <div class="l20 pcar"><a>Nome da cat:</a><a>Caracteristica</a></div>

                        <div class="l20 stitle"><a>Caracteristicas SET3</a></div>
                        <div class="l20 pcar"><a>Nome da cat:</a><a>Caracteristica</a></div>
                        <div class="l20 pcar"><a>Nome da cat:</a><a>Caracteristica</a></div>
                        <div class="l20 pcar"><a>Nome da cat:</a><a>Caracteristica</a></div>
                        <div class="l20 pcar"><a>Nome da cat:</a><a>Caracteristica</a></div>
                    </div>
                    <div class="right50">
                        <div class="l20 stitle"><a>Caracteristicas SET4</a></div>
                        <div class="l20 pcar"><a>Nome da cat:</a><a>Caracteristica</a></div>
                        <div class="l20 pcar"><a>Nome da cat:</a><a>Caracteristica</a></div>
                        <div class="l20 pcar"><a>Nome da cat:</a><a>Caracteristica</a></div>
                        <div class="l20 pcar"><a>Nome da cat:</a><a>Caracteristica</a></div>
                        <div class="l20 pcar"><a>Nome da cat:</a><a>Caracteristica</a></div>
                        <div class="l20 pcar"><a>Nome da cat:</a><a>Caracteristica</a></div>
                        <div class="l20 pcar"><a>Nome da cat:</a><a>Caracteristica</a></div>
                        <div class="l20 pcar"><a>Nome da cat:</a><a>Caracteristica</a></div>

                        <div class="l20 stitle"><a>Caracteristicas SET5</a></div>
                        <div class="l20 pcar"><a>Nome da cat:</a><a>Caracteristica</a></div>
                        <div class="l20 pcar"><a>Nome da cat:</a><a>Caracteristica</a></div>
                    </div>
                </div>



            </div>
        </ItemTemplate>
    </asp:ListView>

</asp:Content>





