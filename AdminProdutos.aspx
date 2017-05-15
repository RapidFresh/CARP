<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Principal.master" AutoEventWireup="true" CodeFile="AdminProdutos.aspx.cs" Inherits="AdminProdutos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
    <div class="catadmin">

        <asp:Button ID="goutilizadores" class="catadminbutton" runat="server" Text="Utilizadores" OnClick="goutilizadores_Click" />
        <br />
        <asp:Button ID="goprodutos" class="catadminbutton  buttonactive" runat="server" Text="Produtos" OnClick="goprodutos_Click" />
        <br />
        <asp:Button ID="gomarca" class="catadminbutton" runat="server" Text="Marcas" />

    </div>

    <div class="tableuse">
        <asp:Label  ID="Aprodutos" runat="server" Font-Size="Larger" CssClass="colortitle" Text="Adicionar Produto"></asp:Label>
        <br />
        <br />
        <asp:DropDownList CssClass="gimmyspace" ID="txtTipoP" Width="100%" runat="server">
        </asp:DropDownList>
        <br />
        <asp:DropDownList CssClass="gimmyspace" ID="txtMarca" Width="100%" runat="server">
        </asp:DropDownList>
        <asp:TextBox ID="txtmodelo" placeholder="Modelo" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtdescricao" placeholder="Descrição" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtpreco" placeholder="Preço" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtdisponibilidade" placeholder="Disponibilidade" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtdesconto" placeholder="Desconto" CssClass="gimmyspace" runat="server" MaxLength="3" Width="100%"></asp:TextBox>
        <br />
        <asp:FileUpload ID="iprod" style="" Width="100%" runat="server" />
        
        <div class="telemoveltablet">
            <br />
            <asp:TextBox ID="txtsistemaoperativo" placeholder="Sistema Operativo" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtprocessador" placeholder="Processador" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtsimformato" placeholder="SIM Formato" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtsimdual" placeholder="SIM Dual" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtoperador" placeholder="Operador" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtrede" placeholder="Rede" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtecratipo" placeholder="Ecrã Tipo" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtecradimensao" placeholder="Ecrã Dimensão" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtecraresolucao" placeholder="Ecrã Resolução" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtwifi" placeholder="WIFI" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtbluetooth" placeholder="Bluetooth" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtnfc" placeholder="NFC" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtentrada" placeholder="Entrada" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtcamararesolucao" placeholder="Camara Resolução" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtcamaraflash" placeholder="Camara Flash" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtcamara2" placeholder="Camara Secundaria" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtcamara2resolucao" placeholder="Camara Secundaria Resolução" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtcamara2flash" placeholder="Camara Secundaria Flash" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtdimensoes" placeholder="Dimensões" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtpeso" placeholder="Peso" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtcores" placeholder="Cor" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtmemoriainterna" placeholder="Memoria Interna" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtmemoriaexterna" placeholder="Memoria Externa" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtmemoriaram" placeholder="Memoria RAM" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtgps" placeholder="GPS" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
            <br />
        </div>




        <asp:Button ID="produtoregister" CssClass="adminbutton" runat="server" Text="Adicionar" OnClick="produtoregister_Click" />

    </div>
</form>
</asp:Content>

