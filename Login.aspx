<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Principal.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">


    <%--<link rel="stylesheet" href="css/style.css">--%>



    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

        <div class="form">
            <form class="login-form" runat="server">
                <div class="loginvis">
                    <asp:TextBox ID="txt_email" type="email" placeholder="Email" runat="server" ></asp:TextBox>
                    <asp:TextBox ID="txt_pass"  type="password" placeholder="Palavra-Passe" runat="server" ></asp:TextBox>
                    <%--<asp:TextBox ID="txt_pass2"  type="text" placeholder="Confirmar Palavra-Passe" runat="server" ></asp:TextBox>--%>
                    <%--<button id="btregister">Criar Conta</button>--%>
                   <%-- <asp:Button ID="btregister"  runat="server" Text="Criar Conta" OnClick="btnregister_Click" />--%>
                    <p class="message">Não tem uma conta? <a" style="color: #337ab7;cursor: pointer;">Registar</a></p>
                </div>

                <div class="registervis hide">
                    <asp:TextBox ID="TextBox1" type="email" placeholder="Email" runat="server" ></asp:TextBox>
                    <asp:TextBox ID="txt_nome"  type="text" placeholder="Primeiro Nome" runat="server" ></asp:TextBox>
                    <asp:TextBox ID="txt_nome2" type="text" placeholder="Ultimo Nome" runat="server" ></asp:TextBox>
                    <asp:TextBox ID="TextBox2"  type="text" placeholder="Palavra-Passe" runat="server" ></asp:TextBox>
                    <%--<asp:TextBox ID="txt_pass2"  type="text" placeholder="Confirmar Palavra-Passe" runat="server" ></asp:TextBox>--%>
                    <%--<button id="btregister">Criar Conta</button>--%>
                    <asp:Button ID="btregister"  runat="server" Text="Criar Conta" OnClick="btnregister_Click" />
                    <p class="message">Já tem uma conta? <a" style="color: #337ab7;cursor: pointer;">Entrar</a></p>
                </div>
            </form>
        </div>

    <%--<div class="login-page">
        <div class="form">
            <form class="register-form">
                <input type="email" placeholder="Email" />
                <input type="password" placeholder="Palavra-Passe" />
                <button>Entrar</button>
                <p class="message">Não tem uma conta? <a href="Register.aspx">Registar</a></p>
            </form>
        </div>
    </div>--%>
    

    <%--<div class="register">

        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="E-Mail"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txt_email" runat="server" Width="98%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="RegularExpressionValidator" Font-Size="Smaller" ForeColor="#346A86" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vg1"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Nome"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txt_nome" runat="server" Width="47.3%"></asp:TextBox>
                    <asp:TextBox ID="txt_nome2" runat="server" Width="45.5%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_nome" ErrorMessage="Introduza seu nome" ValidationGroup="vg1" Font-Size="Smaller" ForeColor="#346A86"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Palavra Passe"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txt_pass" runat="server" Width="98%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_email" ErrorMessage="Introduza sua palavra passe" ValidationGroup="vg1" Font-Size="Smaller" ForeColor="#346A86"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Repita palavra passe"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txt_pass2" runat="server" Width="98%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_pass2" ControlToValidate="txt_pass" ErrorMessage="Introduza a mesma palavra passe" ValidationGroup="vg1" Font-Size="Smaller" ForeColor="#346A86"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="País"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="Paises" runat="server">
                        <asp:ListItem>Afghanestan</asp:ListItem>
                        <asp:ListItem>Portugal</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Paises" ErrorMessage="Introduza o seu País" ValidationGroup="vg1" Font-Size="Smaller" ForeColor="#346A86"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>

                    <asp:ImageButton ID="btnregistar" runat="server" ImageUrl="~/img/registarn.png" Width="98%" ValidationGroup="vg1" OnClick="btnregistar_Click" />

                </td>
            </tr>
        </table>--%>

    <%--</div>--%>

    <%--<div class="form">

        <ul class="tab-group">
            <li class="tab active"><a href="#signup">Registar</a></li>
            <li class="tab"><a href="#login">Entrar</a></li>
        </ul>

        <div class="tab-content">
            <div id="signup">
                <h1>Inscrição Grátis</h1>

                <form action="/" method="post">

                    <div class="top-row">
                        <div class="field-wrap">
                            <label>
                                Primeiro Nome<span class="req"></span>
                            </label>
                            <input type="text" required autocomplete="off" />
                        </div>

                        <div class="field-wrap">
                            <label>
                                Ultimo Nome<span class="req"></span>
                            </label>
                            <input type="text" required autocomplete="off" />
                        </div>
                    </div>

                    <div class="field-wrap">
                        <label>
                            Email<span class="req"></span>
                        </label>
                        <input type="email" required autocomplete="off" />
                    </div>

                    <div class="field-wrap">
                        <label>
                            Senha<span class="req"></span>
                        </label>
                        <input type="password" required autocomplete="off" />
                    </div>

                    <button type="submit" class="button button-block" />
                    Registar</button>
          
         
                </form>

            </div>

            <div id="login">
                <h1>Olá Outra-vez!</h1>

                <form action="/" method="post">

                    <div class="field-wrap">
                        <label>
                            Email<span class="req"></span>
                        </label>
                        <input type="email" required autocomplete="off" />
                    </div>

                    <div class="field-wrap">
                        <label>
                            Senha<span class="req"></span>
                        </label>
                        <input type="password" required autocomplete="off" />
                    </div>

                    <p class="forgot"><a href="#">Não se lembra da senha?</a></p>

                    <button class="button button-block" />
                    Entrar</button>
          
         
                </form>

            </div>

        </div>
        <!-- tab-content -->

    </div>
    <!-- /form -->
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>--%>
</asp:Content>

