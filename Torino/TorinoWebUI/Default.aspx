<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TorinoWebUI._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="row">
		<center>
			<img class="img-responsive center-block" src="Images/TorinoBranco.jpg" /><br /><br />
			<div class="col-md-6 col-sm-6">
				<div class="feature-center animate-box" data-animate-effect="fadeIn">
					<span class="icon">
						<i class="icon-user"></i>
					</span>
					<h3>::Adicionar usuário</h3>
					<p>Adicione novos usuários de login</p>
					<p><a href="frmAdicionarUser.aspx" class="btn btn-primary btn-outline">Vamos lá</a></p>
				</div>			
			</div>
			<div class="col-md-6 col-sm-6">
				<div class="feature-center animate-box" data-animate-effect="fadeIn">
					<span class="icon">
						<i class="icon-search"></i>
					</span>
					<h3>::Consulte equipamentos</h3>
					<p>Busque equipamentos que tiveram algum tipo de serviço realizado em laboratório</p>
					<p><a href="frmConsultaServices.aspx" class="btn btn-primary btn-outline">Vamos lá</a></p>
				</div>
			</div>
			<div class="col-md-6 col-sm-6">
				<div class="feature-center animate-box" data-animate-effect="fadeIn">
					<span class="icon">
						<i class="icon-menu2"></i>
					</span>
					<h3>::Classifique o PXE</h3>
					<p>Classifique a ordem da lista de boots para o PXE</p>
					<p><a href="frmPXE.aspx" class="btn btn-primary btn-outline">Vamos lá</a></p>
				</div>
			</div>

			<div class="col-md-6 col-sm-6">
				<div class="feature-center animate-box" data-animate-effect="fadeIn">
					<span class="icon">
						<i class="icon-clipboard"></i>
					</span>
					<h3>::Crie novo serviço</h3>
					<p>Crie um novo serviço com as predefinições desejadas</p>
					<p><a href="frmServices.aspx" class="btn btn-primary btn-outline">Vamos lá</a></p>
				</div>			
			</div>
		</center>
	</div>
    
</asp:Content>