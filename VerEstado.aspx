<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerEstado.aspx.cs" Inherits="WSFUriasoft.VerEstado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="text-center">
		<p>&nbsp;</p>
		<h3><strong><font COLOR="green">Ver Estado</font></strong></h3>
		<p>&nbsp;</p>
    </div>
    <div class="container-fluid">
	<div class="row">
		<div class="col-md-4">
			<div class="text-center">
			<asp:TextBox ID="numid" runat="server" class="form-control" placeholder="Numero de identificacion"></asp:TextBox> 
			</div>
		</div>
		<div class="col-md-6">
			<div class="text-center">
			<asp:TextBox ID="fechaex" runat="server" class="form-control" placeholder="Fecha de expedicion" TextMode="Date"></asp:TextBox>
			</div>
		</div>
		<div class="col-md-2">
			<div class="text-center">
			<asp:Button ID="Button1" runat="server" Text="Buscar" class="btn btn-lg btn-success" OnClick="Button1_Click"/>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div class="text-center">
			<h3>
				Lista de estudiantes
			</h3>
			<p>&nbsp;</p>
			 <table style="border-collapse: collapse; background-color: #C4C4C4; border-radius: 15px;" border="0" align="center">
				<tbody>
					<tr style="height: 18px;">
						<td width="460px" style="height: 18px;">
							<asp:Label ID="Nombre" runat="server" Text="Nombre" Font-Bold="True"></asp:Label>&nbsp;<asp:Label ID="apellido" runat="server" Text="apellido" Font-Bold="True"></asp:Label></td>
						<td width="460px" style="height: 18px;">
							&nbsp;<asp:Label ID="Numero" runat="server" Text="Numero" Font-Bold="True"></asp:Label>&nbsp;<asp:Label ID="tipoid" runat="server" Text="Tip Id" Font-Bold="True"></asp:Label></td>
					</tr>
					<tr style="height: 18px;">
						<td width="460px" style="height: 18px;">
							<asp:Label ID="sexo" runat="server" Text="sexo" Font-Bold="True"></asp:Label></td>
						<td width="460px" style="height: 18px;">
							<asp:Label ID="Estado" runat="server" Text="Estado" Font-Bold="True"></asp:Label></td>
					</tr>
					<tr style="height: 18px;">
						<td width="460px" style="height: 18px;">
							<asp:Label ID="sede" runat="server" Text="Sede" Font-Bold="True"></asp:Label></td>
						<td width="460px" style="height: 18px;">
							<asp:Label ID="curso" runat="server" Text="curso" Font-Bold="True"></asp:Label></td>
					</tr>
					<tr style="height: 18px;">
						<td width="460px" colspan="2">&nbsp;</td>
					</tr>
				</tbody>
			 </table>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			</div>
		</div>
	</div>
</div>
	<p>&nbsp;</p>
			<p>&nbsp;</p>
	<div class="text-right">
     <a runat="server" class="btn btn-danger" href="~/Default.aspx" role="button">Volver</a>
    </div>
	<p>&nbsp;</p>
			<p>&nbsp;</p>
</asp:Content>
