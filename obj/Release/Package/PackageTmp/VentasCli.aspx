﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VentasCli.aspx.cs" Inherits="PanelAdmin.VentasCli" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">   
    <div class="container">
    <div class="card">
        <div class="card-header">
                <div class="form-row">
                    <div class="col10L">                        
                        <asp:Label ID="Label6" runat="server" Text="VENTAS MES" Style="font-weight: bold; font-size: 18px;"></asp:Label>                                                
                    </div>                   
                </div>
            </div>
        <div class="card-body">
                <div class="form-row">    
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" GridLines="None" AllowPaging="True" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="20" ForeColor="Black" margin-left="2%" DataKeyNames="Row" PageSize="1000">
                        <AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                        <Columns>
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                            <asp:BoundField DataField="Row" HeaderText="Row" SortExpression="Row" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="Monto" HeaderText="Monto" SortExpression="Monto" />
                            <asp:BoundField DataField="FechaVenta" HeaderText="FechaVenta" SortExpression="FechaVenta" />
                        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="white" Font-Bold="True" ForeColor="black" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
<PagerStyle CssClass="pgr"></PagerStyle>
</asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PaladarMobileConnectionString %>" SelectCommand="SELECT Clientes.Nombre, Cabecera.Row, Cabecera.Monto, Cabecera.FechaVenta FROM Cabecera INNER JOIN Clientes ON Clientes.iDCliente = Cabecera.iDCliente WHERE Clientes.Nombre = @Cliente;">
                    <SelectParameters>
            <asp:CookieParameter CookieName="clienteR" Name="Cliente" Type="String" />            
        </SelectParameters>
                    </asp:SqlDataSource>
                    <div class="fila col10L">
                <center><asp:Button class="botonsubmit no-print" value="REGISTRAR CLIENTE" type="submit"  runat="server" CssClass="botonsubmit no-print" OnClientClick="javascript:window.print();" ID="PrintBut"  Text="IMPRIMIR" UseSubmitBehavior="false"/></center>            
            </div>
                    </div>
            </div>
        </div>
        </div>
</asp:Content>
