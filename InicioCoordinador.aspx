<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InicioCoordinador.aspx.cs" Inherits="WSFUriasoft.InicioCoordinador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 <p>&nbsp;</p>
    <p>&nbsp;</p>
    <table style="border-collapse: collapse; width: 100%; height: 18px;" border="0" rules="cols">
        <tbody>
            <tr style="height: 18px;">
                <td width="500px" style="height: 18px;">
                    <p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://static1.abc.es/media/sociedad/2022/01/20/colegio-programacion-kRmB--620x349@abc.jpg" alt="" width="132" height="75" /></p>
                    <p style="text-align: center;"><span style="color: #ffffff;"><strong><span style="color: #000000;">coordinador</span></strong></span></p>
                    <ul>
                        <li><asp:HyperLink ID="MaMa" runat="server" ForeColor="#33CC33" NavigateUrl="~/ManejodeMatriculas.aspx">Manejo de Matriculas</asp:HyperLink></li>
                        <li><asp:HyperLink ID="Cest" runat="server" ForeColor="#33CC33" NavigateUrl="~/Cambiarcurso.aspx">Cambio de estudiantes</asp:HyperLink></li>
                    </ul>
                    <button class="btn btn-danger" onclick="location.href='../Home/Contact'">Salir</button> 
                </td>
                <td width="2500px" style="height: 18px;">
                    <p>&nbsp;</p>
                    <h1>Bienvenido A SFUriaSoft&nbsp;</h1>
                    <p style="text-align: justify;">Bienvenido al Aplicativo web SFWUriaSoft en el cual podr&aacute;s desempe&ntilde;ar todas las funciones relevantes a su cargo asignado.</p>
                    <p><strong>Visi&oacute;n</strong></p>
                    <p style="text-align: justify;">En el a&ntilde;o 2100, el colegio San Francisco de Ur&iacute;a ser&aacute; reconocido como una instituci&oacute;n de educaci&oacute;n de alto nivel, posicion&aacute;ndose como de las mejores a nivel nacional, mundial y universal.</p>
                    <p><strong>Misi&oacute;n</strong></p>
                    <p>Educar a los J&oacute;venes y ni&ntilde;os bajos principios del santo patrono del fuego Uria ense&ntilde;&aacute;ndoles car&aacute;cter y honor.</p>
                </td>
            </tr>
        </tbody>
    </table>
    <p>&nbsp;</p>


</asp:Content>
