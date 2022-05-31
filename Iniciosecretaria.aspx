<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Iniciosecretaria.aspx.cs" Inherits="WSFUriasoft.Iniciosecretaria" %>
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
                        <li><asp:HyperLink ID="Sedes" runat="server" ForeColor="#33CC33">sedes</asp:HyperLink></li>
                        <li><asp:HyperLink ID="Cambist" runat="server" ForeColor="#33CC33">Cambio de estudiantes</asp:HyperLink></li>
                        <li><asp:HyperLink ID="Matriculas" runat="server" ForeColor="#33CC33">Matriculas</asp:HyperLink></li>
                        <li><asp:HyperLink ID="Acudientes" runat="server" ForeColor="#33CC33">Acudientes</asp:HyperLink></li>
                        <li><asp:HyperLink ID="Cursos" runat="server" ForeColor="#33CC33">Cursos</asp:HyperLink></li>
                        <li><asp:HyperLink ID="Adminitirest" runat="server" ForeColor="#33CC33">Admision estudiantes</asp:HyperLink></li>
                    </ul>
                    <button class="btn btn-danger" onclick="location.href='../Home/Contact'">Salir</button> 
                </td>
                <td width="2500px" style="height: 18px;">
                    <p>&nbsp;</p>
                    <h1>Bienvenido A SFUriaSoft&nbsp;</h1>
                </td>
            </tr>
        </tbody>
    </table>
    <p>&nbsp;</p>

</asp:Content>
