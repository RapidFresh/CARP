<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Principal.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- banner -->
    <div class="banner">
        <div class="container">
            <h3>Electronic Store, <span>Special Offers</span></h3>
        </div>
    </div>
    <!-- //banner -->
    <!-- banner-bottom -->
    <div class="banner-bottom" style="background-color:#fff;">
        <div class="container">
            <div class="col-md-5 wthree_banner_bottom_left">
                <div class="video-img">
                    <a class="play-icon popup-with-zoom-anim" href="#small-dialog"></a>
                </div>
                <!-- pop-up-box -->
                <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
                <!--//pop-up-box -->
                <div id="small-dialog" class="mfp-hide">
                    <iframe src="https://www.youtube.com/embed/ZQa6GUVnbNM"></iframe>
                </div>
                <script>
                    $(document).ready(function () {
                        $('.popup-with-zoom-anim').magnificPopup({
                            type: 'inline',
                            fixedContentPos: false,
                            fixedBgPos: true,
                            overflowY: 'auto',
                            closeBtnInside: true,
                            preloader: false,
                            midClick: true,
                            removalDelay: 300,
                            mainClass: 'my-mfp-zoom-in'
                        });

                    });
                </script>
            </div>
            <div class="col-md-7 wthree_banner_bottom_right">
                <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                    <ul id="myTab" class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#home" id="home-tab" style="font-family: 'Roboto', sans-serif;" role="tab" data-toggle="tab" aria-controls="home">Telemoveis</a></li>
                        <li role="presentation"><a href="#audio" style="font-family: 'Roboto', sans-serif;" role="tab" id="audio-tab" data-toggle="tab" aria-controls="audio">Tablets</a></li>
                        <li role="presentation"><a href="#video" style="font-family: 'Roboto', sans-serif;" role="tab" id="video-tab" data-toggle="tab" aria-controls="video">Acessorios</a></li>
                        <li role="presentation"><a href="#somepage" style="font-family: 'Roboto', sans-serif;">+ver mais</a></li>
                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
                            <div class="agile_ecommerce_tabs">
                                <asp:ListView ID="ListView2" runat="server" GroupItemCount="3" GroupPlaceholderID="groupPlaceHolder1"
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
                                        <div class="col-md-4 agile_ecommerce_tab_left">
                                            <div class="hs-wrapper">
                                                <asp:Image class="img-responsive" runat="server" ImageUrl='<%# Eval("ImagemPrincipal", "~/img/{0}")%>' />

                                            </div>
                                            <h5><a href="single.html"><%# Eval("Marca") %>&nbsp;<%# Eval("Modelo") %></a></h5>
                                            <div class="simpleCart_shelfItem">
                                                <p><span><%# Eval("Preço") %></span> <i class="item_price"><%# Eval("Preço") %></i></p>
                                                <form action="#" method="post">
                                                    <input type="hidden" name="cmd" value="_cart" />
                                                    <input type="hidden" name="add" value="1" />
                                                    <input type="hidden" name="w3ls_item" value="<%# Eval("Marca") %>&nbsp;<%# Eval("Modelo") %>" />
                                                    <input type="hidden" name="amount" value="<%# Eval("Preço") %>" />
                                                    <button type="submit" class="w3ls-cart">Adicionar ao carrinho</button>
                                                </form>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:ListView>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="audio" aria-labelledby="audio-tab">
                            <div class="agile_ecommerce_tabs">
                                <asp:ListView ID="ListView3" runat="server" GroupItemCount="3" GroupPlaceholderID="groupPlaceHolder1"
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
                                        <div class="col-md-4 agile_ecommerce_tab_left">
                                            <div class="hs-wrapper">
                                                <asp:Image class="img-responsive" runat="server" ImageUrl='<%# Eval("ImagemPrincipal", "~/img/{0}")%>' />

                                            </div>
                                            <h5><a href="single.html"><%# Eval("Marca") %>&nbsp;<%# Eval("Modelo") %></a></h5>
                                            <div class="simpleCart_shelfItem">
                                                <p><span><%# Eval("Preço") %></span> <i class="item_price"><%# Eval("Preço") %></i></p>
                                                <form action="#" method="post">
                                                    <input type="hidden" name="cmd" value="_cart" />
                                                    <input type="hidden" name="add" value="1" />
                                                    <input type="hidden" name="w3ls_item" value="<%# Eval("Marca") %>&nbsp;<%# Eval("Modelo") %>" />
                                                    <input type="hidden" name="amount" value="<%# Eval("Preço") %>" />
                                                    <button type="submit" class="w3ls-cart">Adicionar ao carrinho</button>
                                                </form>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:ListView>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="video" aria-labelledby="video-tab">
                            <div class="agile_ecommerce_tabs">
                                <asp:ListView ID="ListView4" runat="server" GroupItemCount="3" GroupPlaceholderID="groupPlaceHolder1"
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
                                        <div class="col-md-4 agile_ecommerce_tab_left">
                                            <div class="hs-wrapper">
                                                <asp:Image class="img-responsive" runat="server" ImageUrl='<%# Eval("ImagemPrincipal", "~/img/{0}")%>' />

                                            </div>
                                            <h5><a href="single.html"><%# Eval("Marca") %>&nbsp;<%# Eval("Modelo") %></a></h5>
                                            <div class="simpleCart_shelfItem">
                                                <p><span><%# Eval("Preço") %></span> <i class="item_price"><%# Eval("Preço") %></i></p>
                                                <form action="#" method="post">
                                                    <input type="hidden" name="cmd" value="_cart" />
                                                    <input type="hidden" name="add" value="1" />
                                                    <input type="hidden" name="w3ls_item" value="<%# Eval("Marca") %>&nbsp;<%# Eval("Modelo") %>" />
                                                    <input type="hidden" name="amount" value="<%# Eval("Preço") %>" />
                                                    <button type="submit" class="w3ls-cart">Adicionar ao carrinho</button>
                                                </form>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:ListView>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!-- //banner-bottom -->
    <!-- special-deals -->
    <div class="special-deals" style="overflow: hidden;background-color: #ffffff;-webkit-box-shadow: inset 6px 6px 16px -3px rgba(0,0,0,0.75);-moz-box-shadow: inset 6px 6px 16px -3px rgba(0,0,0,0.75);box-shadow: inset 0px 0px 16px 0px rgba(0,0,0,0.75);width: 99%;margin-left: 0.5%;/*background-image: url('/img/1511.jpg');*/">
        <div class="container">
            <h2>Ofertas Especiais</h2>
            <div class="w3agile_special_deals_grids">
                <div class="col-md-7 w3agile_special_deals_grid_left">
                    <div class="w3agile_special_deals_grid_left_grid" style="cursor: pointer; box-shadow: 5px 5px 4px grey;">
                        <img src="img/sli1.png" alt=" " class="img-responsive" style="filter: blur(2px);">
                        <div class="w3agile_special_deals_grid_left_grid_pos1">
                            <h5 style="font-size: 30px; margin-top: -20px;">-30%</h5>
                        </div>
                        <div class="w3agile_special_deals_grid_left_grid_pos">
                            <h4>Saldos<span>Especial Verão</span></h4>
                        </div>
                    </div>
                    <script src="js/jquery.wmuSlider.js"></script>
                    <script>
                        $('.example1').wmuSlider();
                    </script>
                </div>
                <div class="col-md-5 w3agile_special_deals_grid_right_grid specialofferright" >
                    <a href="#">
                        <img src="img/s8release.jpg" style="text-shadow: 2px 2px #ff0000; box-shadow: 5px 5px 4px grey; /*-webkit-filter: grayscale(50%); filter: grayscale(50%); */width: 400px; height: 248px;" alt=" " class="img-responsive" /></a>
                    <div class="w3agile_special_deals_grid_right_pos">
                        <a href="#">
                            <h3 style="font-family: 'Roboto'; font-size: 30px; color: #f2f2f2; font-size: 30px;"><span>&nbsp</span></h3>
                        </a>
                        <a href="#">
                        </a>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!-- //special-deals -->
    <!-- new-products -->
    <div class="new-products" style="background-color:#fff;">
        <div class="container">
            <h3>Novos Produtos</h3>
            <div class="agileinfo_new_products_grids">
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
                        <div class="col-md-3 agileinfo_new_products_grid">
                            <div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
                                <div class="hs-wrapper hs-wrapper1">
                                   <asp:Image class="img-responsive" runat="server" ImageUrl='<%# Eval("ImagemPrincipal", "~/img/{0}")%>' />
                                </div>
                                <h5><a href="single.html"><%# Eval("Marca") %>&nbsp;<%# Eval("Modelo") %></a></h5>
                                <div class="simpleCart_shelfItem">
                                    <p><span><%# Eval("Preço") %></span> <i class="item_price"><%# ((decimal)Eval("Preço")-(decimal)Eval("Preço")*((decimal)(int)Eval("Desconto")/100)).ToString("N2") %></i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart">
                                        <input type="hidden" name="add" value="1">
                                        <input type="hidden" name="w3ls_item" value="<%# Eval("Marca") %>&nbsp;<%# Eval("Modelo") %>">
                                        <input type="hidden" name="amount" value="<%# ((decimal)Eval("Preço")-(decimal)Eval("Preço")*((decimal)(int)Eval("Desconto")/100)).ToString("N2") %>">
                                        <button type="submit" class="w3ls-cart">Adicionar ao carrinho</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!-- //new-products -->
    <!-- top-brands -->
    <div class="top-brands" style="background-color: #ffffff">
        <div class="container">
            <h3>Marcas de Produtos</h3>
            <div class="sliderfig">
                <ul id="flexiselDemo1">
                    <asp:ListView ID="ListView5" runat="server" GroupItemCount="3" GroupPlaceholderID="groupPlaceHolder1"
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
                            <li>
                                <asp:Image class="img-responsive" runat="server" ImageUrl='<%# Eval("Logo", "~/img/{0}")%>' />
                            </li>
                        </ItemTemplate>
                    </asp:ListView>
                </ul>
            </div>
            <script type="text/javascript">
                $(window).load(function () {
                    $("#flexiselDemo1").flexisel({
                        visibleItems: 3,
                        animationSpeed: 1000,
                        autoPlay: true,
                        autoPlaySpeed: 1000,
                        pauseOnHover: false,
                        enableResponsiveBreakpoints: true,
                        responsiveBreakpoints: {
                            portrait: {
                                changePoint: 480,
                                visibleItems: 1
                            },
                            landscape: {
                                changePoint: 640,
                                visibleItems: 2
                            },
                            tablet: {
                                changePoint: 768,
                                visibleItems: 3
                            }
                        }
                    });

                });
			</script>
            <script type="text/javascript" src="js/jquery.flexisel.js"></script>
        </div>
    </div>
    <!-- //top-brands -->
</asp:Content>
