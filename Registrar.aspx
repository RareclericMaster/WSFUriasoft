<%@ Page Title="Registrar" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="WSFUriasoft.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <p>&nbsp;</p>
    <p>&nbsp;</p>
    <div class="container">
        <table border="0" align="left" style="border-radius: 15px;">
            <tr>
                <td width="460px" align="center" style=" padding: 0.3em;" bgcolor="#228B22">
                    <font COLOR="white">Matricular estudiante</font>
                </td>
            </tr>
            <tr>
                <td width="460px" style="text-align: justify; padding: 0.4em;" bgcolor="lightgrey">
                    <p>
                        En esta opcion lleva a un formulario donde el acudiente y el aspirante ofrecen los datos 
                        pertinente para la inscripcion de este.
                    </p>
                </td>
            </tr>
            <tr>
                <td width="460px" align="center" style=" padding: 0.3em;">
                    <div>
                        <a runat="server" class="btn btn-success" href="~/Formulario.aspx" role="button">Registrar</a>
                    </div>
                </td>
            </tr>
        </table>
        <table border="0" align="right" style="border-radius: 15px;">
            <tr>
                <td width="460px" align="center" style=" padding: 0.3em;" bgcolor="#228B22">
                   <font COLOR="white">Ver Estado del Estudiantes</font>
                </td>
            </tr>
            <tr>
                <td width="460px" style="text-align: justify; padding: 0.4em;" bgcolor="lightgrey">
                    <p>
                        El colegio San Franciso de Uria
                        es uno de los colegios mas prestigiosos a nivel nacional, teniendo 8 sede cada
                        una con tamaño amplio donde se ofrecce el mayor nivel tanto en equipo y educacion
                        a los estudiantes.
                        Fundado en el año 2006 esta institucion busca dar una educacion integral
                        enseñando los valores principades que consideraba el santo Uria patrono de la autoridad
                        y el fuego.
                    </p>
                </td>
            </tr>
            <tr>
                <td width="460px" align="center" style=" padding: 0.3em;">
                    <div>
                        <a runat="server" class="btn btn-success" href="~/VerEstado.aspx" role="button">Ver Estado</a>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <div class="text-right">
     <a runat="server" class="btn btn-danger" href="~/Default.aspx" role="button">Volver</a>
    </div>
    <p>&nbsp;</p>
</asp:Content>
