<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WSFUriasoft._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <p>&nbsp;</p>
    <h1 style="text-align: right;"><strong>&iquest;Quienes Somos?&nbsp; &nbsp; &nbsp; &nbsp; </strong></h1>
    <p>&nbsp;</p>
    <table border="0" align="right" style="background-color: #C4C4C4; border-radius: 15px;">
        <tr>
            <td width="460px" style="text-align: justify; padding: 0.4em;">
                <p>
                    El colegio San Franciso de Uria
                    es uno de los colegios mas prestigiosos a nivel nacional, teniendo 8 sede cada
                    una con tamaño amplio donde se ofrecce el mayor nivel tanto en equipo y educacion
                    a los estudiantes.
                </p>
                <p>
                    Fundado en el año 2006 esta institucion busca dar una educacion integral
                    enseñando los valores principades que consideraba el santo Uria patrono de la autoridad
                    y el fuego.
                </p>
            </td>
        </tr>
    </table>
    <div id="demo" class="carousel slide" data-ride="carousel" style="width: 480px;">

        <!-- Indicators -->
        <ul class="carousel-indicators">
            <li data-target="#demo" data-slide-to="0" class="active"></li>
            <li data-target="#demo" data-slide-to="1"></li>
            <li data-target="#demo" data-slide-to="2"></li>
        </ul>

        <!-- The slideshow -->
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://www.elespectador.com/resizer/ZVU517PQzcmiu1sGFugi42TukEo=/525x350/filters:format(jpeg)/cloudfront-us-east-1.images.arcpublishing.com/elespectador/6SVLRKFD3ZGCXI2Z3F2EFUCMHA.jpg" alt="Los Angeles">
            </div>
            <div class="carousel-item">
                <img src="https://static4.abc.es/media/familia/2021/03/24/colegio-kkiH--620x349@abc.jpg" alt="Chicago">
            </div>
            <div class="carousel-item">
                <img src="https://static1.abc.es/media/sociedad/2022/01/20/colegio-programacion-kRmB--620x349@abc.jpg" alt="New York">
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="carousel-control-prev" href="#demo" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>

    </div>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>

</asp:Content>
