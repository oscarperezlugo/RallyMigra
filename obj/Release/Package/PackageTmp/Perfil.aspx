<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="PanelAdmin.Perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="baseform">
        <div class="container">
    <div class="card">
        <div class="card-header">
                <div class="form-row">
                    <div class="col10L">                        
                        <asp:Label ID="Label6" runat="server" Text="Inserisci nuovo prodotto / modifica"></asp:Label>                                                
                    </div>                   
                </div>
            </div>
        <div class="card-body">
                <div class="form-row">
                    <table style="width: 100%;">
                        <tr>
                            <td>
                                <asp:Image ID="Avatar" runat="server" ImageUrl="~/img/isologo_5.png" class="avatarcss"/> 
                            </td>
                            <td>
                                <%--<asp:Button class="botonsubmit" value="CREAR PRODUCTO" type="submit"  runat="server" CssClass="botonsubmit"  OnClick="Unnamed1_Click"  Text="Cambiar Foto"/> --%>
                            </td>
                        </tr>
                        </table>
                    <asp:Label ID="Label1" runat="server" Text="Datti Personali" class="formularioTIT"></asp:Label>
                    <table style="width: 100%;">
                        <tr>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label1" runat="server" Text="Nombre del Producto" class="formularioTIT"></asp:Label><br /> --%>
                <input class="formulario" placeholder="Nome e Cognome" id="Nombre" type="text" required runat="server" maxlength="50"/>            
            </div></td>
                            </tr>
                         </table>
                    <table style="width: 100%;">
                        <tr>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label2" runat="server" Text="Precio" class="formularioTIT"></asp:Label><br /> --%>
                <input class="formulario" placeholder="Mansione" id="Precio" type="text"  required runat="server" maxlength="50"/> 
            </div></td>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label3" runat="server" Text="Categoria" class="formularioTIT"></asp:Label><br /> --%>
               <input class="formulario" placeholder="Telefono Celulare" id="Text4" type="text"  required runat="server" maxlength="50"/> 
            </div></td>
                        </tr>
                        </table>
<asp:Label ID="Label2" runat="server" Text="Dati sulla attività commerciale" class="formularioTIT"></asp:Label>
                    <table style="width: 100%;">
                        <tr>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label1" runat="server" Text="Nombre del Producto" class="formularioTIT"></asp:Label><br /> --%>
                <input class="formulario" placeholder="Nome della attività" id="Text5" type="text" required runat="server" maxlength="60"/>            
            </div></td>
                            </tr>
                         </table>
                    <table style="width: 100%;">
                        <tr>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label2" runat="server" Text="Precio" class="formularioTIT"></asp:Label><br /> --%>
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="formulario">
                                    <asp:ListItem>Categoria</asp:ListItem>
                                    <asp:ListItem>Restaurant</asp:ListItem>
                                    <asp:ListItem>Ferreteria</asp:ListItem>
                                    <asp:ListItem>Farmacia</asp:ListItem>
                                    <asp:ListItem>Shopping</asp:ListItem>
                                    <asp:ListItem>Supermercado</asp:ListItem>
                                </asp:DropDownList>
            </div></td>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label3" runat="server" Text="Categoria" class="formularioTIT"></asp:Label><br /> --%>
               <input class="formulario" placeholder="Telefono Del Locale" id="Text7" type="text"  required runat="server" maxlength="50"/> 
            </div></td>
                        </tr>
                        </table>
                    <asp:Label ID="Label3" runat="server" Text="Orari di apertura" class="formularioTIT"></asp:Label>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">

                        <Columns>
                            <asp:BoundField DataField="Dia" HeaderText="Dia" SortExpression="Dia"></asp:BoundField>
                            <asp:BoundField DataField="HorarioAp" HeaderText="HorarioAp" SortExpression="HorarioAp"></asp:BoundField>
                            <asp:BoundField DataField="HorarioCi" HeaderText="HorarioCi" SortExpression="HorarioCi"></asp:BoundField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ralliveryConnectionString %>' SelectCommand="SELECT [Dia], [HorarioAp], [HorarioCi] FROM [Horario] WHERE ([Rest] = @Rest)">
                        <SelectParameters>
                            <asp:CookieParameter CookieName="rowC" Name="Rest" Type="Int32"></asp:CookieParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:Button class="botonsubmit" value="CREAR PRODUCTO" type="submit"  runat="server" CssClass="botonsubmit"  OnClick="Unnamed2_Click"  Text="Modifica Orario" UseSubmitBehavior="False" /> 
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Modifica Indrizzo" class="formularioTIT"></asp:Label>
                    <table style="width: 100%;">
                        <tr>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label1" runat="server" Text="Nombre del Producto" class="formularioTIT"></asp:Label><br /> --%>
                <input class="formulario" placeholder="Indrizzo" id="Text6" type="text" required runat="server" maxlength="60"/>            
            </div></td>
                            </tr>
                         </table>
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Centa Bancaria" class="formularioTIT"></asp:Label>
                    <table style="width: 100%;">
                        <tr>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label1" runat="server" Text="Nombre del Producto" class="formularioTIT"></asp:Label><br /> --%>
                <input class="formulario" placeholder="Cuenta Bancaria" id="Text8" type="text" required runat="server" maxlength="60"/>            
            </div></td>
                            </tr>
                         </table>
                    <br />
                    <asp:Button class="botonsubmit" value="CREAR PRODUCTO" type="submit"  runat="server" CssClass="botonsubmit"  OnClick="Unnamed3_Click"  Text="Modifica Cuenta" UseSubmitBehavior="False" /> 
                    <br />
                    <table style="width: 100%;">
                        <tr>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label4" runat="server" Text="Cantidad" class="formularioTIT"></asp:Label><br /> --%>
                <input class="formulario" placeholder="Email" id="Cantidad" type="text" required runat="server"/>            
            </div></td>
                            <td><div class="fila col10L">
                                <input class="formulario" placeholder="Contraseña" id="Text1" type="text" required runat="server"/> 
            </div></td>
                          
                        </tr>   
                         <tr>                           
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label9" runat="server" Text="CPE" class="formularioTIT"></asp:Label><br /> --%>
                <input class="formulario" placeholder="Conferma" id="Text3" type="text" required runat="server"/> 
            </div></td>
                            <td> <div class="fila col10L">
                                <%--<asp:Label ID="Label10" runat="server" TextDescrizione del prodottoOBSERVACION" class="formularioTIT"></asp:Label><br /> --%>
                               <c><input ID="avatarUpload" type="file" name="file" onchange="previewFile()"  runat="server" class="formularioImagen"/>
          <%--      <asp:DropDownList ID="DropDownList3" runat="server" CssClass="formulario">
                    <asp:ListItem>NO REFRIGERADO</asp:ListItem>
                    <asp:ListItem>REFRIGERADO</asp:ListItem>                    
                </asp:DropDownList>--%>
            </div></td>
                        </tr>  
                         <tr>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label11" runat="server" Text="LOTE" class="formularioTIT"></asp:Label><br /> --%>
                         
            </div></td>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label12" runat="server" Text="FECHA VENCIMIENTO" class="formularioTIT"></asp:Label><br /> --%>
                 
            </div></td>
                            <td> <div class="fila col10L">
                                <%--<asp:Label ID="Label13" runat="server" Text="UNIDAD DE MANEJO" class="formularioTIT"></asp:Label><br /> --%>
                <%--<input class="formulario" placeholder="UNIDAD" id="Datetimelocal1" type="text" required runat="server"/> --%>
            </div></td>
                        </tr>
                    </table>
                    <table style="width: 27.5%;">
                        <tr>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label14" runat="server" Text="CODIGO" class="formularioTIT"></asp:Label><br /> --%>
                <%--<input class="formulario" placeholder="CODIGO" id="Text4" type="text" required runat="server"/> --%>
            </div></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        
                    </table>
            
            
            
            
            
                              
            <div class="fila col10L">
                <asp:Button class="botonsubmit" value="CREAR PRODUCTO" type="submit"  runat="server" CssClass="botonsubmit"  OnClick="Unnamed1_Click"  Text="Actualiza Profilo" UseSubmitBehavior="False" />            
            </div>
        </div>
            </div>
            </div>
        </div>
        </div> 
    <script>
        function previewFile() {
            var preview = document.querySelector('#<%=Avatar.ClientID %>');
            var file = document.querySelector('#<%=avatarUpload.ClientID %>').files[0];
            var reader = new FileReader();

            reader.onloadend = function () {
                preview.src = reader.result;
            }

            if (file) {
                reader.readAsDataURL(file);
            } else {
                preview.src = "";
            }
        }
    </script>
</asp:Content>
