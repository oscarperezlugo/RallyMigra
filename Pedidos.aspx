<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" enableEventValidation="false" AutoEventWireup="true" CodeBehind="Pedidos.aspx.cs" Inherits="PanelAdmin.Pedidos"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
    <div class="card">
        <div class="card-header">
                <div class="form-row">
                    <div class="col10L">                        
                        <asp:Label ID="Label6" runat="server" Text="Cronologia Ordini" Style="font-weight: bold; font-size: 18px;"></asp:Label>                                                
                    </div>                   
                </div>
            </div>
        <div class="card-body">
                <div class="form-row">
                     <asp:ListView ID="ListView1" runat="server" OnItemCommand="msg_list_ItemCommand" >
        <ItemTemplate runat="server" >
            <div ID="listaitem" class="listaitem" runat="server"> 
                <table style="width: 100%;">
                    <tr>
                        <td style="width:20%"><img src="img/mes.jpg" class="imagenlista"/>  </td>
                        <td style="width:30%"><div id="cajatitulo"><p class="filaitem columnaitem"><h3><asp:label ID="titulotiendaweb" runat="server" CssClass="titulolista">Numero dell’ordine <%#Eval("Row") %></asp:label></h3></p></div><div ><p class="filaitem columnaitem"><h4><asp:label ID="LabelStat" runat="server" CssClass="statuslista"> <%#Eval("Status") %></asp:label></h4></p></div></td>
                        <td style="width:40%"><div class="cajafila"><p class="filaitem columnaitem"><h6><asp:label ID="fechaVal" runat="server" class="fechalista"><%#Eval("FechaEntrega", "{0:dd-MM-yyyy}") %></asp:label></h6></p></div></td>
                        <td style="width:10%"><div class="botonlista"><p class="filaitem columnaitem"><asp:LinkButton ID="SelectButton" runat="server" Text="Vedi ordine"  CssClass="botonlista" CommandName="Select" CommandArgument='<%#Eval("Row")%>'/></p></div></td>                        
                    </tr>                    
                </table>                                                                    
            </div>
        </ItemTemplate>
    </asp:ListView>       
        </div>
        </div>
        </div>
        </div>  
         
</asp:Content>
