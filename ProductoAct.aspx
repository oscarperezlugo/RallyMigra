<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductoAct.aspx.cs" Inherits="PanelAdmin.ProductoAct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="baseform">
        <div class="container">
    <div class="card">
        <div class="card-header">
                <div class="form-row">
                    <div class="col10L">                        
                        <asp:Label ID="Label6" runat="server" Text="Inserisci nuovo prodotto / modifica"/>                                       
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
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label1" runat="server" Text="Nombre del Producto" class="formularioTIT"></asp:Label><br /> --%>
                <input class="formulario" placeholder="Nome del  prodotto" id="Nombre" type="text" required runat="server" maxlength="60"/>            
            </div></td>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label2" runat="server" Text="Precio" class="formularioTIT"></asp:Label><br /> --%>
                <input class="formulario" placeholder="Prezzo" id="Precio" type="text"  required runat="server" maxlength="5"/> 
            </div></td>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label3" runat="server" Text="Categoria" class="formularioTIT"></asp:Label><br /> --%>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="formulario" DataSourceID="SqlDataSource1" DataTextField="Categoria" DataValueField="Categoria" ></asp:DropDownList>                           
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PaladarMobileConnectionString %>" SelectCommand="SELECT [Categoria] FROM [Categorias]"></asp:SqlDataSource>
            </div></td>
                        </tr>
                        <tr>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label4" runat="server" Text="Cantidad" class="formularioTIT"></asp:Label><br /> --%>
                <input class="formulario" placeholder="Quantità" id="Cantidad" type="number" maxlength="10" required runat="server"/>            
            </div></td>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label5" runat="server" Text="Condición Fiscal" class="formularioTIT"></asp:Label><br />--%> 
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="formulario">
                    <asp:ListItem>Exento de IVA</asp:ListItem>
                    <asp:ListItem>Aplica IVA</asp:ListItem>
                </asp:DropDownList>
            </div></td>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label7" runat="server" Text="Imagen" class="formularioTIT"></asp:Label><br /> --%>
                                <input class="formulario" placeholder="Codice prodotto" id="Text2" type="datetime" required runat="server"/>
                                      
            </div> </td>
                        </tr>   
                         <tr>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label8" runat="server" Text="Precio Compra" class="formularioTIT"></asp:Label><br /> --%>
                                <input class="formulario" placeholder="Codice prodotto" id="Text1" type="text" maxlength="10" required runat="server"/>   
                <%--<input class="formulario" placeholder="Precio Compra $ formato (9,18)" id="Number1" type="text" maxlength="10" required runat="server"/>            --%>
            </div></td>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label9" runat="server" Text="CPE" class="formularioTIT"></asp:Label><br /> --%>
                <input class="formulario" placeholder="Descrizione del prodotto" id="Text3" type="text" required runat="server"/> 
            </div></td>
                            <td> <div class="fila col10L">
                                <%--<asp:Label ID="Label10" runat="server" TextDescrizione del prodottoOBSERVACION" class="formularioTIT"></asp:Label><br /> --%>
                                <%--<c><asp:FileUpload ID="FileUpload1" runat="server" onchange="previewFile()" CssClass="formularioImagen" /></c>--%>
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
                <asp:Button class="botonsubmit" value="CREAR PRODUCTO" type="submit"  runat="server" CssClass="botonsubmit"  OnClick="Unnamed1_Click"  Text="Aggiungi Prodotto"/>            
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
