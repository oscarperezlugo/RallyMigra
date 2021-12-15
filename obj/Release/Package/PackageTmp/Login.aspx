<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PanelAdmin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Administrativo JEBCPHARMA</title>
    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>
    ea
    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link href="Content/columnas.css" rel="stylesheet" />
    <link href="Content/Site2.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200&display=swap" rel="stylesheet"/>  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link href="Content/Print.css" rel="stylesheet" media="print"/>
        <link rel="preconnect" href="https://fonts.gstatic.com"/>       
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100&family=Roboto:wght@100&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@700&display=swap" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="nave fijador">
            <div  class="col2L  col0M col0S col0T" >
                  <a href="Default.aspx"><img id="logo" src="img/weblogo_jebcpharma-2.png" /></a>
            </div>            
        </nav>
  <%--      <nav class="subnave fijadordos">
            <%--<label class="fa fa-bars botonsub no-print" for="check"/>&ensp; 
            <i class="fas fa-user"></i>&ensp;<asp:Label ID="Label1" runat="server" CssClass="nomlog" for="chek"></asp:Label>--%>
        <%--</nav> --%>

        <div class="baseform" style="width:60%; margin-left:20%; margin-top:10%;">
            <table style="width: 100%;">
                <tr>
                    <td style="width:70%;">
                        <div class="col10L">                        
                        <asp:Label ID="Label6" runat="server" Text="Accesso" CssClass="loginclass"></asp:Label>                                                
                    </div> 
                         <div class="fila col10L">
                <asp:Button class="botonsubmitAzul" value="REGISTRARME" type="submit" runat="server" CssClass="botonsubmitAzul" Text="Voglio ordinare" UseSubmitBehavior="False" /> <asp:Button class="botonsubmit" value="REGISTRARME" type="submit" runat="server" CssClass="botonsubmitAzul" Text="Diventa Partner" UseSubmitBehavior="False" /> <asp:Button class="botonsubmit" value="REGISTRARME" type="submit" runat="server" CssClass="botonsubmitAzul" Text="Diventa Rallista" UseSubmitBehavior="False" />            
            </div>
                        
                        <div class="fila col10L">
                <input class="formularioL" placeholder="Correo" id="Correo" type="text" required runat="server"/>            
            </div>                       
            <div class="fila col10L">
                <input class="formularioL" placeholder="Contraseña" id="Contrasena" type="password" required runat="server"/>            
            </div> 
                        <p><a class="enlaces" href="Contrasena.aspx">Hai dimenticato la tua password?</a></p>
                        <table>
                            <tr>
                                <td>
                                    <div class="fila col10L">
                <asp:Button class="botonsubmit" value="REGISTRARME" type="submit" runat="server" CssClass="botonsubmit" Text="Accedi" OnClick="Unnamed1_Click" />            
            </div>
                                </td>
                                <td>
                                     <p><a class="enlaces" href="Registro.aspx">Proseguendo  si dà il consenso ai</a><a class="enlacesdos" href="Registro.aspx">Termini e condizioni</a></p>
                                        <p><a class="enlaces" href="Contrasena.aspx">nostra</a><a class="enlacesdos" href="Contrasena.aspx">Privacy Policy e Cookie Policy. </a></p>
                                </td>
                            </tr>
                        </table>
                        
                    </td>
                    <td style="width:30%">
                        <img src="img/Mask%20Group.png" />
                    </td>                    
                </tr>                
            </table>
           
                       
           
            
        </div>  
          <br />
            <br />
            <footer class="footer fila ">
        <div id="footer1" class="col2L col1M col1S col1T divfoot">
            <div class="fila">
                <img id="logobajo" src="img/Isologo_5.png" />
                <a class="elefoot col10L">© 2021 - Rallivery.</a><br />
                <a class="elefoot col10L">Tutti i diritti riservati.</a>
            </div>
        </div>
        <div id="footer2" class="col2L col1M col1S col1T divfoot">
            <a class="elefoottres col10L">Categorie</a><br />
            <br />
            <a class="elefootdos col10L">Ristoranti</a><br />
            <a class="elefootdos col10L">Supermercati</a><br />
            <a class="elefootdos col10L">Farmacie</a><br />
            <a class="elefootdos col10L">Florerie</a><br />
            <a class="elefootdos col10L">Ferramente</a>
        </div>
        <div id="footer3" class="col2L col1M col1S col1T divfoot">
            <a class="elefoottres col10L">Informazione</a><br />
            <br />
            <a class="elefootdos col10L">Termini e Condizione</a><br />
            <a class="elefootdos col10L">Privacy Policy</a><br />
            <a class="elefootdos col10L">Cookie Policy</a><br />
            <a class="elefootdos col10L">Contatacci</a><br />
            
        </div>
        <div id="footer4" class="col2L col1M col1S col1T divfoot">
            <br />
            <br />
            <br />
            <a class="elefootdos col10L">Chi Siamo</a><br />
            <a class="elefootdos col10L">Diventa Rallista</a><br />
            <a class="elefootdos col10L">Diventa Partner</a><br />
        </div>
        <div id="footer5" class="col2L col1M col1S col1T divfoot">
            <a class="elefoottres col10L">Portaci ovunque</a><br />
            <img class="logodes" src="img/Frame1.png" /><br />
            <img class="logodes" src="img/imagen7.png" /><br />  
            <a class="elefoottres col10L">Seguici su</a><br />
            <i class="fa fa-instagram elefoottres" aria-hidden="true" style="font-size:25px;"></i>
            <i class="fa fa-facebook-official elefoottres" aria-hidden="true" style="font-size:25px;"></i>
            <br />
        </div>
    </footer>
    </form>
</body>
</html>
