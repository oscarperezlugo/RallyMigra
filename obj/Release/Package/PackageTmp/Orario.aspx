 <%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Orario.aspx.cs" Inherits="PanelAdmin.Orario" %>
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
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label1" runat="server" Text="Nombre del Producto" class="formularioTIT"></asp:Label><br /> --%>
                <input class="formulario" placeholder="LUNEDI" id="Nombre" type="text" required runat="server" maxlength="60" disabled/>            
            </div></td>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label2" runat="server" Text="Precio" class="formularioTIT"></asp:Label><br /> --%>
                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="formulario" >
                    <asp:ListItem>Hora Apertura</asp:ListItem>
                    <asp:ListItem>1:00</asp:ListItem>
                    <asp:ListItem>2:00</asp:ListItem>
                    <asp:ListItem>3:00</asp:ListItem>
                    <asp:ListItem>4:00</asp:ListItem>
                    <asp:ListItem>5:00</asp:ListItem>
                    <asp:ListItem>6:00</asp:ListItem>
                    <asp:ListItem>7:00</asp:ListItem>
                    <asp:ListItem>8:00</asp:ListItem>
                    <asp:ListItem>9:00</asp:ListItem>
                    <asp:ListItem>10:00</asp:ListItem>
                    <asp:ListItem>11:00</asp:ListItem>
                    <asp:ListItem>12:00</asp:ListItem>
                    <asp:ListItem>13:00</asp:ListItem>
                    <asp:ListItem>14:00</asp:ListItem>
                    <asp:ListItem>15:00</asp:ListItem>
                    <asp:ListItem>16:00</asp:ListItem>
                    <asp:ListItem>17:00</asp:ListItem>
                    <asp:ListItem>18:00</asp:ListItem>
                    <asp:ListItem>19:00</asp:ListItem>
                    <asp:ListItem>20:00</asp:ListItem>
                    <asp:ListItem>21:00</asp:ListItem>
                    <asp:ListItem>22:00</asp:ListItem>
                    <asp:ListItem>23:00</asp:ListItem>
                    <asp:ListItem>0:00</asp:ListItem>
                </asp:DropDownList>                
            </div></td>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label3" runat="server" Text="Categoria" class="formularioTIT"></asp:Label><br /> --%>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="formulario" >
                    <asp:ListItem>Hora Cierre</asp:ListItem>
                    <asp:ListItem>1:00</asp:ListItem>
                    <asp:ListItem>2:00</asp:ListItem>
                    <asp:ListItem>3:00</asp:ListItem>
                    <asp:ListItem>4:00</asp:ListItem>
                    <asp:ListItem>5:00</asp:ListItem>
                    <asp:ListItem>6:00</asp:ListItem>
                    <asp:ListItem>7:00</asp:ListItem>
                    <asp:ListItem>8:00</asp:ListItem>
                    <asp:ListItem>9:00</asp:ListItem>
                    <asp:ListItem>10:00</asp:ListItem>
                    <asp:ListItem>11:00</asp:ListItem>
                    <asp:ListItem>12:00</asp:ListItem>
                    <asp:ListItem>13:00</asp:ListItem>
                    <asp:ListItem>14:00</asp:ListItem>
                    <asp:ListItem>15:00</asp:ListItem>
                    <asp:ListItem>16:00</asp:ListItem>
                    <asp:ListItem>17:00</asp:ListItem>
                    <asp:ListItem>18:00</asp:ListItem>
                    <asp:ListItem>19:00</asp:ListItem>
                    <asp:ListItem>20:00</asp:ListItem>
                    <asp:ListItem>21:00</asp:ListItem>
                    <asp:ListItem>22:00</asp:ListItem>
                    <asp:ListItem>23:00</asp:ListItem>
                    <asp:ListItem>0:00</asp:ListItem>
                </asp:DropDownList>                                           
            </div></td>
                            <td>
                                <div class="fila col10L">
                <asp:Button class="botonsubmit" value="CREAR PRODUCTO" type="submit"  runat="server" CssClass="botonsubmit"  OnClick="Unnamed1_Click"  Text="AGGIORNARE"/>            
            </div>
                            </td>
                        </tr>
                        <tr>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label1" runat="server" Text="Nombre del Producto" class="formularioTIT"></asp:Label><br /> --%>
                <input class="formulario" placeholder="MARTEDI" id="Text1" type="text" required runat="server" maxlength="60" disabled/>            
            </div></td>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label2" runat="server" Text="Precio" class="formularioTIT"></asp:Label><br /> --%>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="formulario" >
                    <asp:ListItem>Hora Apertura</asp:ListItem>
                    <asp:ListItem>1:00</asp:ListItem>
                    <asp:ListItem>2:00</asp:ListItem>
                    <asp:ListItem>3:00</asp:ListItem>
                    <asp:ListItem>4:00</asp:ListItem>
                    <asp:ListItem>5:00</asp:ListItem>
                    <asp:ListItem>6:00</asp:ListItem>
                    <asp:ListItem>7:00</asp:ListItem>
                    <asp:ListItem>8:00</asp:ListItem>
                    <asp:ListItem>9:00</asp:ListItem>
                    <asp:ListItem>10:00</asp:ListItem>
                    <asp:ListItem>11:00</asp:ListItem>
                    <asp:ListItem>12:00</asp:ListItem>
                    <asp:ListItem>13:00</asp:ListItem>
                    <asp:ListItem>14:00</asp:ListItem>
                    <asp:ListItem>15:00</asp:ListItem>
                    <asp:ListItem>16:00</asp:ListItem>
                    <asp:ListItem>17:00</asp:ListItem>
                    <asp:ListItem>18:00</asp:ListItem>
                    <asp:ListItem>19:00</asp:ListItem>
                    <asp:ListItem>20:00</asp:ListItem>
                    <asp:ListItem>21:00</asp:ListItem>
                    <asp:ListItem>22:00</asp:ListItem>
                    <asp:ListItem>23:00</asp:ListItem>
                    <asp:ListItem>0:00</asp:ListItem>
                </asp:DropDownList>                
            </div></td>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label3" runat="server" Text="Categoria" class="formularioTIT"></asp:Label><br /> --%>
                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="formulario" >
                    <asp:ListItem>Hora Cierre</asp:ListItem>
                    <asp:ListItem>1:00</asp:ListItem>
                    <asp:ListItem>2:00</asp:ListItem>
                    <asp:ListItem>3:00</asp:ListItem>
                    <asp:ListItem>4:00</asp:ListItem>
                    <asp:ListItem>5:00</asp:ListItem>
                    <asp:ListItem>6:00</asp:ListItem>
                    <asp:ListItem>7:00</asp:ListItem>
                    <asp:ListItem>8:00</asp:ListItem>
                    <asp:ListItem>9:00</asp:ListItem>
                    <asp:ListItem>10:00</asp:ListItem>
                    <asp:ListItem>11:00</asp:ListItem>
                    <asp:ListItem>12:00</asp:ListItem>
                    <asp:ListItem>13:00</asp:ListItem>
                    <asp:ListItem>14:00</asp:ListItem>
                    <asp:ListItem>15:00</asp:ListItem>
                    <asp:ListItem>16:00</asp:ListItem>
                    <asp:ListItem>17:00</asp:ListItem>
                    <asp:ListItem>18:00</asp:ListItem>
                    <asp:ListItem>19:00</asp:ListItem>
                    <asp:ListItem>20:00</asp:ListItem>
                    <asp:ListItem>21:00</asp:ListItem>
                    <asp:ListItem>22:00</asp:ListItem>
                    <asp:ListItem>23:00</asp:ListItem>
                    <asp:ListItem>0:00</asp:ListItem>
                </asp:DropDownList>                                           
            </div></td>
                            <td>
                                <div class="fila col10L">
                <asp:Button class="botonsubmit" value="CREAR PRODUCTO" type="submit"  runat="server" CssClass="botonsubmit"  OnClick="Unnamed1_Click"  Text="AGGIORNARE"/>            
            </div>
                            </td>
                        </tr>
                        <tr>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label1" runat="server" Text="Nombre del Producto" class="formularioTIT"></asp:Label><br /> --%>
                <input class="formulario" placeholder="MERCOLEDI" id="Text2" type="text" required runat="server" maxlength="60" disabled/>            
            </div></td>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label2" runat="server" Text="Precio" class="formularioTIT"></asp:Label><br /> --%>
                <asp:DropDownList ID="DropDownList5" runat="server" CssClass="formulario" >
                    <asp:ListItem>Hora Apertura</asp:ListItem>
                    <asp:ListItem>1:00</asp:ListItem>
                    <asp:ListItem>2:00</asp:ListItem>
                    <asp:ListItem>3:00</asp:ListItem>
                    <asp:ListItem>4:00</asp:ListItem>
                    <asp:ListItem>5:00</asp:ListItem>
                    <asp:ListItem>6:00</asp:ListItem>
                    <asp:ListItem>7:00</asp:ListItem>
                    <asp:ListItem>8:00</asp:ListItem>
                    <asp:ListItem>9:00</asp:ListItem>
                    <asp:ListItem>10:00</asp:ListItem>
                    <asp:ListItem>11:00</asp:ListItem>
                    <asp:ListItem>12:00</asp:ListItem>
                    <asp:ListItem>13:00</asp:ListItem>
                    <asp:ListItem>14:00</asp:ListItem>
                    <asp:ListItem>15:00</asp:ListItem>
                    <asp:ListItem>16:00</asp:ListItem>
                    <asp:ListItem>17:00</asp:ListItem>
                    <asp:ListItem>18:00</asp:ListItem>
                    <asp:ListItem>19:00</asp:ListItem>
                    <asp:ListItem>20:00</asp:ListItem>
                    <asp:ListItem>21:00</asp:ListItem>
                    <asp:ListItem>22:00</asp:ListItem>
                    <asp:ListItem>23:00</asp:ListItem>
                    <asp:ListItem>0:00</asp:ListItem>
                </asp:DropDownList>                
            </div></td>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label3" runat="server" Text="Categoria" class="formularioTIT"></asp:Label><br /> --%>
                <asp:DropDownList ID="DropDownList6" runat="server" CssClass="formulario" >
                    <asp:ListItem>Hora Cierre</asp:ListItem>
                    <asp:ListItem>1:00</asp:ListItem>
                    <asp:ListItem>2:00</asp:ListItem>
                    <asp:ListItem>3:00</asp:ListItem>
                    <asp:ListItem>4:00</asp:ListItem>
                    <asp:ListItem>5:00</asp:ListItem>
                    <asp:ListItem>6:00</asp:ListItem>
                    <asp:ListItem>7:00</asp:ListItem>
                    <asp:ListItem>8:00</asp:ListItem>
                    <asp:ListItem>9:00</asp:ListItem>
                    <asp:ListItem>10:00</asp:ListItem>
                    <asp:ListItem>11:00</asp:ListItem>
                    <asp:ListItem>12:00</asp:ListItem>
                    <asp:ListItem>13:00</asp:ListItem>
                    <asp:ListItem>14:00</asp:ListItem>
                    <asp:ListItem>15:00</asp:ListItem>
                    <asp:ListItem>16:00</asp:ListItem>
                    <asp:ListItem>17:00</asp:ListItem>
                    <asp:ListItem>18:00</asp:ListItem>
                    <asp:ListItem>19:00</asp:ListItem>
                    <asp:ListItem>20:00</asp:ListItem>
                    <asp:ListItem>21:00</asp:ListItem>
                    <asp:ListItem>22:00</asp:ListItem>
                    <asp:ListItem>23:00</asp:ListItem>
                    <asp:ListItem>0:00</asp:ListItem>
                </asp:DropDownList>                                           
            </div></td>
                            <td>
                                <div class="fila col10L">
                <asp:Button class="botonsubmit" value="CREAR PRODUCTO" type="submit"  runat="server" CssClass="botonsubmit"  OnClick="Unnamed1_Click"  Text="AGGIORNARE"/>            
            </div>
                            </td>
                        </tr>
                        <tr>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label1" runat="server" Text="Nombre del Producto" class="formularioTIT"></asp:Label><br /> --%>
                <input class="formulario" placeholder="GIOVEDI" id="Text3" type="text" required runat="server" maxlength="60" disabled/>            
            </div></td>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label2" runat="server" Text="Precio" class="formularioTIT"></asp:Label><br /> --%>
                <asp:DropDownList ID="DropDownList7" runat="server" CssClass="formulario" >
                    <asp:ListItem>Hora Apertura</asp:ListItem>
                    <asp:ListItem>1:00</asp:ListItem>
                    <asp:ListItem>2:00</asp:ListItem>
                    <asp:ListItem>3:00</asp:ListItem>
                    <asp:ListItem>4:00</asp:ListItem>
                    <asp:ListItem>5:00</asp:ListItem>
                    <asp:ListItem>6:00</asp:ListItem>
                    <asp:ListItem>7:00</asp:ListItem>
                    <asp:ListItem>8:00</asp:ListItem>
                    <asp:ListItem>9:00</asp:ListItem>
                    <asp:ListItem>10:00</asp:ListItem>
                    <asp:ListItem>11:00</asp:ListItem>
                    <asp:ListItem>12:00</asp:ListItem>
                    <asp:ListItem>13:00</asp:ListItem>
                    <asp:ListItem>14:00</asp:ListItem>
                    <asp:ListItem>15:00</asp:ListItem>
                    <asp:ListItem>16:00</asp:ListItem>
                    <asp:ListItem>17:00</asp:ListItem>
                    <asp:ListItem>18:00</asp:ListItem>
                    <asp:ListItem>19:00</asp:ListItem>
                    <asp:ListItem>20:00</asp:ListItem>
                    <asp:ListItem>21:00</asp:ListItem>
                    <asp:ListItem>22:00</asp:ListItem>
                    <asp:ListItem>23:00</asp:ListItem>
                    <asp:ListItem>0:00</asp:ListItem>
                </asp:DropDownList>                
            </div></td>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label3" runat="server" Text="Categoria" class="formularioTIT"></asp:Label><br /> --%>
                <asp:DropDownList ID="DropDownList8" runat="server" CssClass="formulario" >
                    <asp:ListItem>Hora Cierre</asp:ListItem>
                    <asp:ListItem>1:00</asp:ListItem>
                    <asp:ListItem>2:00</asp:ListItem>
                    <asp:ListItem>3:00</asp:ListItem>
                    <asp:ListItem>4:00</asp:ListItem>
                    <asp:ListItem>5:00</asp:ListItem>
                    <asp:ListItem>6:00</asp:ListItem>
                    <asp:ListItem>7:00</asp:ListItem>
                    <asp:ListItem>8:00</asp:ListItem>
                    <asp:ListItem>9:00</asp:ListItem>
                    <asp:ListItem>10:00</asp:ListItem>
                    <asp:ListItem>11:00</asp:ListItem>
                    <asp:ListItem>12:00</asp:ListItem>
                    <asp:ListItem>13:00</asp:ListItem>
                    <asp:ListItem>14:00</asp:ListItem>
                    <asp:ListItem>15:00</asp:ListItem>
                    <asp:ListItem>16:00</asp:ListItem>
                    <asp:ListItem>17:00</asp:ListItem>
                    <asp:ListItem>18:00</asp:ListItem>
                    <asp:ListItem>19:00</asp:ListItem>
                    <asp:ListItem>20:00</asp:ListItem>
                    <asp:ListItem>21:00</asp:ListItem>
                    <asp:ListItem>22:00</asp:ListItem>
                    <asp:ListItem>23:00</asp:ListItem>
                    <asp:ListItem>0:00</asp:ListItem>
                </asp:DropDownList>                                           
            </div></td>
                            <td>
                                <div class="fila col10L">
                <asp:Button class="botonsubmit" value="CREAR PRODUCTO" type="submit"  runat="server" CssClass="botonsubmit"  OnClick="Unnamed1_Click"  Text="AGGIORNARE"/>            
            </div>
                            </td>
                        </tr>
                        <tr>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label1" runat="server" Text="Nombre del Producto" class="formularioTIT"></asp:Label><br /> --%>
                <input class="formulario" placeholder="VENERDI" id="Text4" type="text" required runat="server" maxlength="60" disabled/>            
            </div></td>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label2" runat="server" Text="Precio" class="formularioTIT"></asp:Label><br /> --%>
                <asp:DropDownList ID="DropDownList9" runat="server" CssClass="formulario" >
                    <asp:ListItem>Hora Apertura</asp:ListItem>
                    <asp:ListItem>1:00</asp:ListItem>
                    <asp:ListItem>2:00</asp:ListItem>
                    <asp:ListItem>3:00</asp:ListItem>
                    <asp:ListItem>4:00</asp:ListItem>
                    <asp:ListItem>5:00</asp:ListItem>
                    <asp:ListItem>6:00</asp:ListItem>
                    <asp:ListItem>7:00</asp:ListItem>
                    <asp:ListItem>8:00</asp:ListItem>
                    <asp:ListItem>9:00</asp:ListItem>
                    <asp:ListItem>10:00</asp:ListItem>
                    <asp:ListItem>11:00</asp:ListItem>
                    <asp:ListItem>12:00</asp:ListItem>
                    <asp:ListItem>13:00</asp:ListItem>
                    <asp:ListItem>14:00</asp:ListItem>
                    <asp:ListItem>15:00</asp:ListItem>
                    <asp:ListItem>16:00</asp:ListItem>
                    <asp:ListItem>17:00</asp:ListItem>
                    <asp:ListItem>18:00</asp:ListItem>
                    <asp:ListItem>19:00</asp:ListItem>
                    <asp:ListItem>20:00</asp:ListItem>
                    <asp:ListItem>21:00</asp:ListItem>
                    <asp:ListItem>22:00</asp:ListItem>
                    <asp:ListItem>23:00</asp:ListItem>
                    <asp:ListItem>0:00</asp:ListItem>
                </asp:DropDownList>                
            </div></td>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label3" runat="server" Text="Categoria" class="formularioTIT"></asp:Label><br /> --%>
                <asp:DropDownList ID="DropDownList10" runat="server" CssClass="formulario" >
                    <asp:ListItem>Hora Cierre</asp:ListItem>
                    <asp:ListItem>1:00</asp:ListItem>
                    <asp:ListItem>2:00</asp:ListItem>
                    <asp:ListItem>3:00</asp:ListItem>
                    <asp:ListItem>4:00</asp:ListItem>
                    <asp:ListItem>5:00</asp:ListItem>
                    <asp:ListItem>6:00</asp:ListItem>
                    <asp:ListItem>7:00</asp:ListItem>
                    <asp:ListItem>8:00</asp:ListItem>
                    <asp:ListItem>9:00</asp:ListItem>
                    <asp:ListItem>10:00</asp:ListItem>
                    <asp:ListItem>11:00</asp:ListItem>
                    <asp:ListItem>12:00</asp:ListItem>
                    <asp:ListItem>13:00</asp:ListItem>
                    <asp:ListItem>14:00</asp:ListItem>
                    <asp:ListItem>15:00</asp:ListItem>
                    <asp:ListItem>16:00</asp:ListItem>
                    <asp:ListItem>17:00</asp:ListItem>
                    <asp:ListItem>18:00</asp:ListItem>
                    <asp:ListItem>19:00</asp:ListItem>
                    <asp:ListItem>20:00</asp:ListItem>
                    <asp:ListItem>21:00</asp:ListItem>
                    <asp:ListItem>22:00</asp:ListItem>
                    <asp:ListItem>23:00</asp:ListItem>
                    <asp:ListItem>0:00</asp:ListItem>
                </asp:DropDownList>                                           
            </div></td>
                            <td>
                                <div class="fila col10L">
                <asp:Button class="botonsubmit" value="CREAR PRODUCTO" type="submit"  runat="server" CssClass="botonsubmit"  OnClick="Unnamed1_Click"  Text="AGGIORNARE"/>            
            </div>
                            </td>
                        </tr>
                        <tr>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label1" runat="server" Text="Nombre del Producto" class="formularioTIT"></asp:Label><br /> --%>
                <input class="formulario" placeholder="SABATO" id="Text5" type="text" required runat="server" maxlength="60" disabled/>            
            </div></td>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label2" runat="server" Text="Precio" class="formularioTIT"></asp:Label><br /> --%>
                <asp:DropDownList ID="DropDownList11" runat="server" CssClass="formulario" >
                    <asp:ListItem>Hora Apertura</asp:ListItem>
                    <asp:ListItem>1:00</asp:ListItem>
                    <asp:ListItem>2:00</asp:ListItem>
                    <asp:ListItem>3:00</asp:ListItem>
                    <asp:ListItem>4:00</asp:ListItem>
                    <asp:ListItem>5:00</asp:ListItem>
                    <asp:ListItem>6:00</asp:ListItem>
                    <asp:ListItem>7:00</asp:ListItem>
                    <asp:ListItem>8:00</asp:ListItem>
                    <asp:ListItem>9:00</asp:ListItem>
                    <asp:ListItem>10:00</asp:ListItem>
                    <asp:ListItem>11:00</asp:ListItem>
                    <asp:ListItem>12:00</asp:ListItem>
                    <asp:ListItem>13:00</asp:ListItem>
                    <asp:ListItem>14:00</asp:ListItem>
                    <asp:ListItem>15:00</asp:ListItem>
                    <asp:ListItem>16:00</asp:ListItem>
                    <asp:ListItem>17:00</asp:ListItem>
                    <asp:ListItem>18:00</asp:ListItem>
                    <asp:ListItem>19:00</asp:ListItem>
                    <asp:ListItem>20:00</asp:ListItem>
                    <asp:ListItem>21:00</asp:ListItem>
                    <asp:ListItem>22:00</asp:ListItem>
                    <asp:ListItem>23:00</asp:ListItem>
                    <asp:ListItem>0:00</asp:ListItem>
                </asp:DropDownList>                
            </div></td>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label3" runat="server" Text="Categoria" class="formularioTIT"></asp:Label><br /> --%>
                <asp:DropDownList ID="DropDownList12" runat="server" CssClass="formulario" >
                    <asp:ListItem>Hora Cierre</asp:ListItem>
                    <asp:ListItem>1:00</asp:ListItem>
                    <asp:ListItem>2:00</asp:ListItem>
                    <asp:ListItem>3:00</asp:ListItem>
                    <asp:ListItem>4:00</asp:ListItem>
                    <asp:ListItem>5:00</asp:ListItem>
                    <asp:ListItem>6:00</asp:ListItem>
                    <asp:ListItem>7:00</asp:ListItem>
                    <asp:ListItem>8:00</asp:ListItem>
                    <asp:ListItem>9:00</asp:ListItem>
                    <asp:ListItem>10:00</asp:ListItem>
                    <asp:ListItem>11:00</asp:ListItem>
                    <asp:ListItem>12:00</asp:ListItem>
                    <asp:ListItem>13:00</asp:ListItem>
                    <asp:ListItem>14:00</asp:ListItem>
                    <asp:ListItem>15:00</asp:ListItem>
                    <asp:ListItem>16:00</asp:ListItem>
                    <asp:ListItem>17:00</asp:ListItem>
                    <asp:ListItem>18:00</asp:ListItem>
                    <asp:ListItem>19:00</asp:ListItem>
                    <asp:ListItem>20:00</asp:ListItem>
                    <asp:ListItem>21:00</asp:ListItem>
                    <asp:ListItem>22:00</asp:ListItem>
                    <asp:ListItem>23:00</asp:ListItem>
                    <asp:ListItem>0:00</asp:ListItem>
                </asp:DropDownList>                                           
            </div></td>
                            <td>
                                <div class="fila col10L">
                <asp:Button class="botonsubmit" value="CREAR PRODUCTO" type="submit"  runat="server" CssClass="botonsubmit"  OnClick="Unnamed1_Click"  Text="AGGIORNARE"/>            
            </div>
                            </td>
                        </tr>
                        <tr>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label1" runat="server" Text="Nombre del Producto" class="formularioTIT"></asp:Label><br /> --%>
                <input class="formulario" placeholder="DOMENICA" id="Text6" type="text" required runat="server" maxlength="60" disabled/>            
            </div></td>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label2" runat="server" Text="Precio" class="formularioTIT"></asp:Label><br /> --%>
                <asp:DropDownList ID="DropDownList13" runat="server" CssClass="formulario" >
                    <asp:ListItem>Hora Apertura</asp:ListItem>
                    <asp:ListItem>1:00</asp:ListItem>
                    <asp:ListItem>2:00</asp:ListItem>
                    <asp:ListItem>3:00</asp:ListItem>
                    <asp:ListItem>4:00</asp:ListItem>
                    <asp:ListItem>5:00</asp:ListItem>
                    <asp:ListItem>6:00</asp:ListItem>
                    <asp:ListItem>7:00</asp:ListItem>
                    <asp:ListItem>8:00</asp:ListItem>
                    <asp:ListItem>9:00</asp:ListItem>
                    <asp:ListItem>10:00</asp:ListItem>
                    <asp:ListItem>11:00</asp:ListItem>
                    <asp:ListItem>12:00</asp:ListItem>
                    <asp:ListItem>13:00</asp:ListItem>
                    <asp:ListItem>14:00</asp:ListItem>
                    <asp:ListItem>15:00</asp:ListItem>
                    <asp:ListItem>16:00</asp:ListItem>
                    <asp:ListItem>17:00</asp:ListItem>
                    <asp:ListItem>18:00</asp:ListItem>
                    <asp:ListItem>19:00</asp:ListItem>
                    <asp:ListItem>20:00</asp:ListItem>
                    <asp:ListItem>21:00</asp:ListItem>
                    <asp:ListItem>22:00</asp:ListItem>
                    <asp:ListItem>23:00</asp:ListItem>
                    <asp:ListItem>0:00</asp:ListItem>
                </asp:DropDownList>                
            </div></td>
                            <td><div class="fila col10L">
                                <%--<asp:Label ID="Label3" runat="server" Text="Categoria" class="formularioTIT"></asp:Label><br /> --%>
                <asp:DropDownList ID="DropDownList14" runat="server" CssClass="formulario" >
                    <asp:ListItem>Hora Cierre</asp:ListItem>
                    <asp:ListItem>1:00</asp:ListItem>
                    <asp:ListItem>2:00</asp:ListItem>
                    <asp:ListItem>3:00</asp:ListItem>
                    <asp:ListItem>4:00</asp:ListItem>
                    <asp:ListItem>5:00</asp:ListItem>
                    <asp:ListItem>6:00</asp:ListItem>
                    <asp:ListItem>7:00</asp:ListItem>
                    <asp:ListItem>8:00</asp:ListItem>
                    <asp:ListItem>9:00</asp:ListItem>
                    <asp:ListItem>10:00</asp:ListItem>
                    <asp:ListItem>11:00</asp:ListItem>
                    <asp:ListItem>12:00</asp:ListItem>
                    <asp:ListItem>13:00</asp:ListItem>
                    <asp:ListItem>14:00</asp:ListItem>
                    <asp:ListItem>15:00</asp:ListItem>
                    <asp:ListItem>16:00</asp:ListItem>
                    <asp:ListItem>17:00</asp:ListItem>
                    <asp:ListItem>18:00</asp:ListItem>
                    <asp:ListItem>19:00</asp:ListItem>
                    <asp:ListItem>20:00</asp:ListItem>
                    <asp:ListItem>21:00</asp:ListItem>
                    <asp:ListItem>22:00</asp:ListItem>
                    <asp:ListItem>23:00</asp:ListItem>
                    <asp:ListItem>0:00</asp:ListItem>
                </asp:DropDownList>                                           
            </div></td>
                            <td>
                                <div class="fila col10L">
                <asp:Button class="botonsubmit" value="CREAR PRODUCTO" type="submit"  runat="server" CssClass="botonsubmit"  OnClick="Unnamed1_Click"  Text="AGGIORNARE"/>            
            </div>
                            </td>
                        </tr>
                        </table>
            </div>
            </div>
        </div>
        </div> 
        </div> 

    

</asp:Content>
