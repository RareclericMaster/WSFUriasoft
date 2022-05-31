<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="WSFUriasoft.Formulario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<p>&nbsp;</p>
    <h1 style="text-align: center;"><strong><span style="color: #008000;">Registrar</span></strong></h1>
    <p>&nbsp;</p>
		<div class="row">
		<div class="col-md-4"  style="background-color: #E9E4E4;">
			<p style="text-align: center;"><strong><span style="color: #008000;">Datos del acudiente</span></strong></p>
			<p>Nombre: </p>
			<asp:TextBox ID="TextNombre" runat="server" class="form-control"></asp:TextBox>
            <p>Apellido: </p>
			<asp:TextBox ID="TextApellido" runat="server" class="form-control"></asp:TextBox>
            <p>Tipo de Id.: </p>
			<asp:TextBox ID="Textid" runat="server" class="form-control"></asp:TextBox>
            <p>Numero de Id.: </p>
			<asp:TextBox ID="Textnumid" runat="server" class="form-control"></asp:TextBox>
            <p>Telefono: </p>
			<asp:TextBox ID="Texttel" runat="server" class="form-control"></asp:TextBox>
            <p>Correo:</p>
			<asp:TextBox ID="Textcorreo" runat="server" class="form-control"></asp:TextBox>
			<p>&nbsp;</p>
		</div>
		<div class="col-md-1">
		</div>
		<div class="col-md-7"  style="background-color: #E9E4E4;">
			<div class="row">
				<div class="col-md-12">
					<p style="text-align: center;"><strong><span style="color: #008000;">Datos del Estudiante</span></strong></p>
				</div>
			</div>
				<div class="row">
				<div class="col-md-6">
					<p>Nombre: </p>
					<asp:TextBox ID="TextNoms" runat="server" class="form-control"></asp:TextBox>
                    <p>Apellido: </p>
					<asp:TextBox ID="TextApes" runat="server" class="form-control"></asp:TextBox>
                    <p>Num Id: </p>
					<asp:TextBox ID="Textids" runat="server" class="form-control"></asp:TextBox>
                    <p>Tipo_id:</p>
					<asp:TextBox ID="Texttids" runat="server" class="form-control"></asp:TextBox>
					<p>Fecha_Expedicion: </p>
					<asp:TextBox ID="Textfecs" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
					<p>Jornada: </p>
					<asp:DropDownList ID="JornadaDrop" runat="server" CssClass="dropdown-toggle"></asp:DropDownList>
					<p></p>
				</div>
				<div class="col-md-6">
                    <p>Telefono: </p>
					<asp:TextBox ID="Texttels" runat="server" class="form-control"></asp:TextBox>
                    <p>email: </p>
					<asp:TextBox ID="Textemas" runat="server" class="form-control"></asp:TextBox>
                    <p>Edad: </p>
					<asp:TextBox ID="Textedads" runat="server" class="form-control"></asp:TextBox>
                    <p>Sexo:</p>
					<asp:TextBox ID="Textsexos" runat="server" class="form-control"></asp:TextBox>
					<p>Sede </p>
					<asp:DropDownList ID="SedeDrop" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Sedeseleccionada" class="dropdown-toggle"></asp:DropDownList>
					<p>Grado</p>
					<asp:DropDownList ID="GradoDrop" runat="server" class="dropdown-toggle"></asp:DropDownList>
				</div>
			</div>
		</div>
	</div>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<div class="text-center">
		<asp:Button ID="Registrar" runat="server" Text="Registrar" class="btn btn-lg btn-success" OnClick="Registrar_Click1" />
	</div>
    <div class="text-right">
     <a runat="server" class="btn btn-danger" href="~/Default.aspx" role="button">Volver</a>
    </div>
    <p>&nbsp;</p>
	<!-- Modalelo Aprobado-->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">    
    <div class="modal-content">
      <div class="modal-header" style="background-color:#008000;">
         <!--<button type="button" class="close" data-dismiss="modal">&times;</button>-->
        <h4 class="modal-title" style="color:white;">Informacion</h4>
      </div>
      <div class="modal-body">
      <p>Sea realizado el registro con exito</p>
      <p></p>
      <p></p>
   <div class="text-right">
	<a runat="server" class="btn btn-success" href="~/Registrar.aspx" role="button">Volver</a>
   </div>
 </div>
      <div class="modal-footer" style="background-color:#008000;">
      </div>
    </div>

  </div>
</div>
	<script type="text/javascript">
        function openModal() {
            $('#myModal').modal('show');
        }
	</script>
		<p>&nbsp;</p>
    <p>&nbsp;</p>
	<!-- Modalelo Rechazado-->
<div id="Rechazado" class="modal fade" role="dialog">
  <div class="modal-dialog">    
    <div class="modal-content">
      <div class="modal-header" style="background-color:#008000;">
         <!--<button type="button" class="close" data-dismiss="modal">&times;</button>-->
        <h4 class="modal-title" style="color:white;">Informacion</h4>
      </div>
      <div class="modal-body">
      <p>Ha fallado el Registro</p>
      <p></p>
      <p></p>
   <div class="text-right">
	<a runat="server" class="btn btn-success" href="~/Formulario.aspx" role="button">Volver</a>
   </div>
 </div>
      <div class="modal-footer" style="background-color:#008000;">
      </div>
    </div>

  </div>
</div>
	<script type="text/javascript">
        function openModal2() {
            $('#Rechazado').modal('show');
        }
    </script>
</asp:Content>
