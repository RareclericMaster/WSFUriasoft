<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admisiones.aspx.cs" Inherits="WSFUriasoft.Admisiones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <p>&nbsp;</p>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-2">
					<p><strong><span style="color: #008000;">Sede</span></strong></p>
				</div>
				<div class="col-md-2">
					<p><strong><span style="color: #008000;">Grado</span></strong></p>
				</div>
				<div class="col-md-2">
					<p><strong><span style="color: #008000;">jornada</span></strong></p>
				</div>
				<div class="col-md-2">
				</div>
				<div class="col-md-2">
				</div>
				<div class="col-md-2">
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-2">
					<asp:DropDownList ID="Sede" runat="server" OnSelectedIndexChanged="Sede_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
				</div>
				<div class="col-md-2">
					<asp:DropDownList ID="Grado" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Grado_SelectedIndexChanged"></asp:DropDownList>
				</div>
				<div class="col-md-2">
					<asp:DropDownList ID="jornada" runat="server"></asp:DropDownList>
				</div>
				<div class="col-md-2">
				</div>
				<div class="col-md-2">
				</div>
				<div class="col-md-2">
					<asp:Button ID="Buscar" runat="server" Text="Buscar" class="btn btn-lg btn-success" OnClick="Buscar_Click" />
				</div>
			</div>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-6 text-center">
							<asp:ListBox ID="Listestudiantes" runat="server"></asp:ListBox>
							<p>&nbsp;</p>
							<asp:Button ID="Seleccionar" runat="server" Text="Seleccionar" class="btn btn-lg btn-success" OnClick="Seleccionar_Click"/>
						</div>
						<div class="col-md-6">
										<div class="text-center">
											<table style="border-collapse: collapse; background-color: #C4C4C4;" border="0" align="left">
												<tbody>
													<tr style="height: 18px;">
														<td width="360px" style="height: 18px;">
															<asp:Label ID="Nombre" runat="server" Text="Nombre"></asp:Label>&nbsp;<asp:Label ID="apellido" runat="server" Text="apellido"></asp:Label></td>
														<td width="360px" style="height: 18px;">
															<asp:Label ID="tipoid" runat="server" Text="Tip Id"></asp:Label>&nbsp;<asp:Label ID="Numero" runat="server" Text="Numero"></asp:Label></td>
													</tr>
													<tr style="height: 18px;">
														<td width="360px" style="height: 18px;">
															<asp:Label ID="sexo" runat="server" Text="sexo"></asp:Label></td>
														<td width="360px" style="height: 18px;">
															<asp:Label ID="Estado" runat="server" Text="Estado"></asp:Label></td>
													</tr>
													<tr style="height: 18px;">
														<td width="360px" style="height: 18px;">
															<asp:Label ID="Sedes" runat="server" Text="Sedes"></asp:Label></td>
														<td width="360px" style="height: 18px;">
															<asp:Label ID="Grados" runat="server" Text="Grados"></asp:Label>
														</td>
													</tr>
													</tbody>
													</table>
													<table border="0" align="left" style="background-color: #C4C4C4;">
														<tr>
															<td width="560px" style="text-align: justify; padding: 0.4em;">
																<asp:Panel ID="Panel1" runat="server">
																	<p><strong>Observacion</strong></p>
																	<div class="text-center">
																	<asp:TextBox ID="observaciones" runat="server" TextMode="MultiLine" Columns="40" Rows="7"></asp:TextBox>
																	</div>
																	<div class="text-right">
																	<asp:Button ID="Aprobar" runat="server" Text="Aprobar" class="btn btn-primary" OnClick="Aprobar_Click"/>
																	<asp:Button ID="Rechazar" runat="server" Text="Rechazar" class="btn btn-danger" OnClick="Rechazar_Click"/>
																	</div>
																</asp:Panel>
															</td>
														</tr>
													</table>
													<p>&nbsp;</p>
													<p>&nbsp;</p>
										</div>
								</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<div class="text-right">
     <a runat="server" class="btn btn-danger" href="~/InicioPsicoorientador.aspx" role="button">Volver</a>
    </div>
	<p>&nbsp;</p>
	<p>&nbsp;</p>

</asp:Content>
