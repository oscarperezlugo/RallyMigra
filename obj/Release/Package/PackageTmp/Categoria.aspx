<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Categoria.aspx.cs" Inherits="PanelAdmin.Categoria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="baseform">
        <div class="container">
    <div class="card">
        <div class="card-header">
                <div class="form-row">
                    <div class="col10L">                        
                        <asp:Label ID="Label6" runat="server" Text="Crea nuova categoria"></asp:Label>                                                
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
                        <tr>
                            <td><div class="fila col10L">
                               <%-- <asp:Label ID="Label1" runat="server" Text="Nombre de la Categoria" class="formularioTIT"></asp:Label><br />--%> 
                <input class="formulario" placeholder="Nome della Categoria" id="Nombre" type="text" required runat="server" maxlength="49"/>            
            </div>  </td>
                            <td><div class="fila col10L">
                               <%-- <asp:Label ID="Label2" runat="server" Text="Imagen de la Categoria" class="formularioTIT"></asp:Label><br />--%>
               <c><input ID="avatarUpload" type="file" name="file" onchange="previewFile()"  runat="server" class="formularioImagen"/>
                              <%--  <c><asp:FileUpload ID="FileUpload1" runat="server" CssClass="formularioImagen" /></c>   --%>                      
            </div>   </td>                            
                        </tr>                        
                    </table>                                                    
            <div class="fila col10L">
                <asp:Button class="botonsubmit" value="CREAR PRODUCTO" type="submit"  runat="server" CssClass="botonsubmit"  OnClick="Unnamed1_Click"  Text="Crea categoria"/>            
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
