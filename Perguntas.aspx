<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Principal.master" AutoEventWireup="true" CodeFile="Perguntas.aspx.cs" Inherits="Perguntas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<!-- banner -->
	<div class="banner banner10">
		<div class="container">
			<h2 style="font-size:50px;color:#337ab7; text-shadow: 0px 0px 10px grey;font-family: 'Roboto', sans-serif;font-weight: 700;text-transform: uppercase;margin-left: -70px;margin-top: -20px;">Perguntas Populares</h2>
		</div>
	</div>
	<!-- //banner -->    
	
	<!-- faq -->
	<div class="faq">
		<div class="container">	
			<div class="w3l_faq_grids">
				<div class="w3l_faq_grid">
					<h3>1. Quais os metodos de pagamento na loja online CARP?</h3>
					<p><b>Resposta:</b> De momento a loja CARP so permite acompra online de produtos a partir de Paypal, mas está previsto no futuro haver a oportunidade de pagamento de outras formas.</p>
				</div>

				<div class="w3l_faq_grid">
					<h3>2. A CARP compra produtos usados? Aceita retoma?</h3>
					<p><b>Resposta:</b> Não. Não compramos material usado nem aceitamos qualquer tipo de retomas.</p>
				</div>

                <div class="w3l_faq_grid">
					<h3>3. Existe alguma loja fisica CARP?</h3>
					<p><b>Resposta:</b> Não, pois a CARP é uma loja exclusivamente online, e não temos planos para criar uma loja fisica.</p>
				</div>
			</div>
		</div>
	</div>
	<!-- //faq -->
</asp:Content>

