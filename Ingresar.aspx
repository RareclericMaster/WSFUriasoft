<%@ Page Title="Ingresar" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ingresar.aspx.cs" Inherits="WSFUriasoft.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<div class="text-center">
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <img class="mb-4" src="https://w7.pngwing.com/pngs/550/532/png-transparent-red-and-yellow-flame-with-shield-logo-flame-shield-fire-shield-design-text-logo-shields.png" alt="" width="72" height="72">
    <h1 class="h3 mb-3 font-weight-normal" _msthash="302536" _msttexthash="529672">Por favor, inicie sesión</h1>
    <table border="0" align="center" style="border-radius: 15px;">
        <tr>
            <td>
                <asp:TextBox ID="usuario" runat="server" class="form-control" placeholder="usuario"></asp:TextBox>
                <asp:TextBox ID="contraseña" runat="server" class="form-control" placeholder="contraseña" type="password"></asp:TextBox>
            </td>
        </tr>
    </table>
    <p>&nbsp;</p>
    <asp:Button ID="sesion" runat="server" Text="Inicia sesión" class="btn btn-lg btn-success" OnClick="sesion_Click"/>
    <p class="mt-5 mb-3 text-muted" _msthash="303186" _msttexthash="85839">© 2006-2022</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <div class="text-right">
     <a runat="server" class="btn btn-danger" href="~/Default.aspx" role="button">Volver</a>
    </div>
    <p>&nbsp;</p>
</div>
</asp:Content>

