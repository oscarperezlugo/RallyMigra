<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrdenDetalle.aspx.cs" Inherits="PanelAdmin.OrdenDetalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="baseform">
        <div class="container">
    <div class="greycard">
        <div class="greycard-header">
                <div class="form-row">
                    <div class="col10L">                        
                        <asp:Label ID="Label6" runat="server" Text="Ordine # "></asp:Label><asp:Label ID="Label2" runat="server"></asp:Label>                                                  
                    </div>                   
                </div>
            </div>
        <div class="card-body">
                <div class="form-row">                   
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Producto" HeaderText="Producto" SortExpression="Producto"></asp:BoundField>
                            <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad"></asp:BoundField>
                            <asp:BoundField DataField="ProdExtra" HeaderText="Extra" SortExpression="ProdExtra"></asp:BoundField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ralliveryConnectionString %>' SelectCommand="SELECT [Producto], [Cantidad], ProdExtra FROM [Lineas] WHERE ([Orden] = @Orden)">
                        <SelectParameters>
                            <asp:CookieParameter CookieName="ordineC" Name="Orden" Type="Int32"></asp:CookieParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
             </div>
            <div class="card">
        <div class="card-header">
                <div class="form-row">
                    <div class="col10L">                        
                        <asp:Label ID="Label1" runat="server" Text="Fattura"></asp:Label>                                                
                    </div>                   
                </div>
            </div>
        <div class="card-body">
                <div class="form-row">
                    <table style="width: 100%;">
                        <tr>
                            <td><asp:Label ID="Label3" runat="server" Text="Dati di fattura"></asp:Label> </td>
                            <td>&nbsp;</td>
                            <td><asp:Label ID="Label4" runat="server" Text="Orario di consegna"></asp:Label> </td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label5" runat="server" Text="Riassunto"></asp:Label></td>
                            <td><asp:Label ID="Label7" runat="server" Text="Vedi riassunto"></asp:Label></td>
                            <td><asp:Label ID="Label8" runat="server" Text="Inserisci nuovo prodotto / modifica"></asp:Label></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label9" runat="server" Text="Totale ordine"></asp:Label></td>
                            <td><asp:Label ID="Label10" runat="server" Text="Inserisci nuovo prodotto / modifica"></asp:Label></td>
                            <td>&nbsp;</td>
                        </tr>
                         <tr>
                            <td><asp:Label ID="Label11" runat="server" Text="Costo consegna"></asp:Label></td>
                            <td><asp:Label ID="Label12" runat="server" Text="Inserisci nuovo prodotto / modifica"></asp:Label></td>
                            <td><asp:Label ID="Label13" runat="server" Text="Metodo di pagamento"></asp:Label></td>
                        </tr>
                         <tr>
                            <td><asp:Label ID="Label14" runat="server" Text="Mancia"></asp:Label></td>
                            <td><asp:Label ID="Label15" runat="server" Text="Inserisci nuovo prodotto / modifica"></asp:Label></td>
                            <td><asp:Label ID="Label16" runat="server" Text="Inserisci nuovo prodotto / modifica"></asp:Label></td>
                        </tr>
                    </table>
                    <asp:Button ID="Button1" runat="server" Text="Acetta Ordine" OnClick="Button1_Click" /> <asp:Button ID="Button2" runat="server" Text="Anulla Ordine" OnClick="Button2_Click" />

        </div>
            </div>
            </div>
       
        </div> 

</asp:Content>
