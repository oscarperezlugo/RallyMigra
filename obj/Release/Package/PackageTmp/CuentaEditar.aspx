<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CuentaEditar.aspx.cs" Inherits="PanelAdmin.CuentaEditar" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">   
    <div class="container">
    <div class="card">
        <div class="card-header">
                <div class="form-row">
                    <div class="col10L">                        
                       <asp:Label ID="Label6" runat="server" Text="I miei prodotti" ></asp:Label>                                                
                    </div>                   
                </div>
            </div>
        <div class="card-body">
                <div class="form-row">   
                    <center><input class="formularioBusqueda" placeholder="Cerca per nome o categoria" id="Correo" type="text" runat="server"/>  
                <asp:Button class="botonsubmit" value="REGISTRARME" type="submit" runat="server" CssClass="botonsubmitbusqueda" Text="Cerca" OnClick="Unnamed1_Click" /></center>
                    <br />

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" GridLines="None" AllowPaging="True" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="20" ForeColor="Black" margin-left="2%" DataKeyNames="Row" >
                        <AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                        <Columns>
                            
                            <asp:BoundField DataField="Producto" HeaderText="Prodotto" SortExpression="Producto" />
                            <asp:BoundField DataField="PrecioD" HeaderText="Prezzo" SortExpression="PrecioD" />
                            <%--<asp:BoundField DataField="iDProducto" HeaderText="iDProducto" SortExpression="iDProducto" />--%>
                            <asp:BoundField DataField="Row" HeaderText="IID" SortExpression="Row" InsertVisible="False" ReadOnly="True" />
                            <%--<asp:BoundField DataField="PrecioD" HeaderText="PrecioD" SortExpression="PrecioD" />--%>
                            <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                            <asp:BoundField DataField="Cantidad" HeaderText="Quantità" SortExpression="Cantidad" />
                            <%--<asp:BoundField DataField="Impuesto" HeaderText="Impuesto" SortExpression="Impuesto"></asp:BoundField>--%>
                            <%--<asp:BoundField DataField="PrecioCompra" HeaderText="PrecioCompra" SortExpression="PrecioCompra"></asp:BoundField>--%>
                            <%--<asp:BoundField DataField="Lote" HeaderText="Lote" SortExpression="Lote"></asp:BoundField>--%>
                            <asp:BoundField DataField="FechaVenc" HeaderText="Data di Scadenza" SortExpression="FechaVenc"></asp:BoundField>
                            <%--<asp:BoundField DataField="Unidad" HeaderText="Unidad" SortExpression="Unidad"></asp:BoundField>--%>
                          <%--  <asp:CommandField ShowSelectButton="True" ButtonType="Button" SelectText="ACTUALIZAR"></asp:CommandField>--%>
                            <asp:TemplateField ItemStyle-BackColor="white">
                <ItemTemplate>
                    <asp:ImageButton ID="btnDoSomething" runat="server" CommandName="DoSomething" Text="Do Something" OnClick="DoSomethingElse" EnableTheming="True" UseSubmitBehavior="False" ImageUrl="~/img/Group.png" BackColor="White"/>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField ItemStyle-BackColor="white">
                <ItemTemplate>
                    <asp:ImageButton ID="btnImageSomething" runat="server" CommandName="DoSomethingElse" ImageUrl="~/img/001-eliminar%202.png" EnableTheming="True" UseSubmitBehavior="False" OnClick="DoSomethingElseDel" BackColor="White" />
                </ItemTemplate>
            </asp:TemplateField>
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PaladarMobileConnectionString %>" SelectCommand="SELECT [Producto], [Precio], [iDProducto], [Row], [PrecioD], [Categoria], [Cantidad], [Impuesto], [PrecioCompra], [Lote], [FechaVenc], [Unidad] FROM [Producto] Where (Codigo = @Rest)">                        
                    <SelectParameters>                            
                            <asp:CookieParameter CookieName="rowC" Name="Rest" Type="String"></asp:CookieParameter>                                                                                                       
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" GridLines="None" AllowPaging="True" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="20" ForeColor="Black" margin-left="2%" DataKeyNames="Row">
                        <AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                        <Columns>
                            <asp:BoundField DataField="Producto" HeaderText="Prodotto" SortExpression="Producto" />
                            <asp:BoundField DataField="PrecioD" HeaderText="Prezzo" SortExpression="PrecioD" />
                            <%--<asp:BoundField DataField="iDProducto" HeaderText="iDProducto" SortExpression="iDProducto" />--%>
                            <asp:BoundField DataField="Row" HeaderText="IID" SortExpression="Row" InsertVisible="False" ReadOnly="True" />
                            <%--<asp:BoundField DataField="PrecioD" HeaderText="PrecioD" SortExpression="PrecioD" />--%>
                            <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                            <asp:BoundField DataField="Cantidad" HeaderText="Quantità" SortExpression="Cantidad" />
                            <%--<asp:BoundField DataField="Impuesto" HeaderText="Impuesto" SortExpression="Impuesto"></asp:BoundField>--%>
                            <%--<asp:BoundField DataField="PrecioCompra" HeaderText="PrecioCompra" SortExpression="PrecioCompra"></asp:BoundField>--%>
                            <%--<asp:BoundField DataField="Lote" HeaderText="Lote" SortExpression="Lote"></asp:BoundField>--%>
                            <asp:BoundField DataField="FechaVenc" HeaderText="Data di Scadenza" SortExpression="FechaVenc"></asp:BoundField>
                            <%--<asp:BoundField DataField="Unidad" HeaderText="Unidad" SortExpression="Unidad"></asp:BoundField>--%>
                            <asp:TemplateField ItemStyle-BackColor="white">
                <ItemTemplate>
                    <asp:ImageButton ID="btnDoSomething" runat="server" CommandName="DoSomething" Text="Do Something" OnClick="DoSomething" EnableTheming="True" UseSubmitBehavior="False" ImageUrl="~/img/Group.png" BackColor="White"/>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField ItemStyle-BackColor="white">
                <ItemTemplate>
                    <asp:ImageButton ID="btnImageSomething" runat="server" CommandName="DoSomething" ImageUrl="~/img/001-eliminar%202.png" EnableTheming="True" UseSubmitBehavior="False" OnClick="DoSomethingDel" BackColor="White" />
                </ItemTemplate>
            </asp:TemplateField>
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
                    
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PaladarMobileConnectionString %>" SelectCommand="SELECT [Producto], [Precio], [iDProducto], [Row], [PrecioD], [Categoria], [Cantidad], [Impuesto], [PrecioCompra], [Lote], [FechaVenc], [Unidad] FROM [Producto] WHERE ([Producto] LIKE '%' + @Producto + '%' AND Codigo = @Rest) or ([Categoria] LIKE '%' + @Producto + '%' AND Codigo = @Rest)">
                        <SelectParameters>
                            <asp:CookieParameter CookieName="paramseisC" Name="Producto" Type="String"></asp:CookieParameter>
                            <asp:CookieParameter CookieName="rowC" Name="Rest" Type="String"></asp:CookieParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                    </div>
            </div>
        </div>
        </div>
</asp:Content>
