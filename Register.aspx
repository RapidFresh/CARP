<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Principal.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="form">
            <form class="login-form" runat="server">
                <asp:TextBox ID="txt_email" type="email" placeholder="Email" runat="server" ></asp:TextBox>
                <asp:TextBox ID="txt_nome"  type="text" placeholder="Primeiro Nome" runat="server" ></asp:TextBox>
                <asp:TextBox ID="txt_nome2" type="text" placeholder="Ultimo Nome" runat="server" ></asp:TextBox>
                <asp:TextBox ID="txt_pass"  type="text" placeholder="Palavra-Passe" runat="server" ></asp:TextBox>
                <%--<asp:TextBox ID="txt_pass2"  type="text" placeholder="Confirmar Palavra-Passe" runat="server" ></asp:TextBox>--%>
                <%--<button id="btregister">Criar Conta</button>--%>
                <asp:Button ID="btregister"  runat="server" Text="Criar Conta" OnClick="btnregister_Click" />
                <p class="message">Já tem uma conta? <a href="Login.aspx">Entrar</a></p>

            </form>
        </div>
</asp:Content>

