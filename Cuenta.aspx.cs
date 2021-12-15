using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PanelAdmin
{
    public partial class Cuenta : System.Web.UI.Page
    {
        string FOTO;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.Cookies["paramseisyuC"] != null)
            {
                string connectionString = Conection.ConexLine;
                string query = "SELECT Producto, PrecioD, Foto, Categoria, Cantidad, Impuesto, Codigo, cpe, FechaVenc FROM Producto WHERE Row=@Row";


                using (SqlConnection con = new SqlConnection(connectionString))
                using (SqlCommand cmd = new SqlCommand(query, con))
                {

                    cmd.Parameters.Add("@Row", SqlDbType.Int).Value = Request.Cookies["paramseisyuC"].Value;



                    con.Open();


                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.Read())
                        {
                            Nombre.Value = dr.GetFieldValue<string>(0);
                            Precio.Value = dr.GetFieldValue<decimal>(1).ToString();
                            DropDownList1.SelectedValue = dr.GetFieldValue<string>(3);
                            Cantidad.Value = dr.GetFieldValue<int>(4).ToString();
                            DropDownList2.SelectedValue = dr.GetFieldValue<string>(5);
                            DateTime FECHA = dr.GetFieldValue<DateTime>(8);
                            Text2.Value = "" + FECHA.Year + "-" + FECHA.Month.ToString("00") + "-" + FECHA.Day.ToString("00") + "";
                            Text1.Value = dr.GetFieldValue<string>(6);
                            Text3.Value = dr.GetFieldValue<string>(7);
                            if (dr.IsDBNull(2))
                            {

                            }
                            else
                            {
                                byte[] imagem = (byte[])(dr[2]);
                                string base64String = Convert.ToBase64String(imagem);
                                Avatar.ImageUrl = String.Format("data:image/jpg;base64,{0}", base64String);
                            }
                            
                        }
                        else
                        {


                        }

                        dr.Close();
                    }

                    con.Close();
                }
                HttpCookie buscarS = new HttpCookie("paramseisyuCB");
                buscarS.Value = Request.Cookies["paramseisyuC"].Value;
                buscarS.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(buscarS);
                Response.Cookies["paramseisyuC"].Expires = DateTime.Now.AddDays(-1);
            }
            else
            {

            }
            

        }       

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Byte[] Archivo = null;
            string nombreArchivo = string.Empty;
            string extensionArchivo = string.Empty;
            if (avatarUpload.Value != "")
            {
                using (BinaryReader reader = new
                BinaryReader(avatarUpload.PostedFile.InputStream))
                {
                    Archivo = reader.ReadBytes(avatarUpload.PostedFile.ContentLength);
                    FOTO = Convert.ToBase64String(Archivo);
                }
                nombreArchivo = Path.GetFileNameWithoutExtension(avatarUpload.Name);
                extensionArchivo = Path.GetExtension(avatarUpload.Name);
                if (Nombre.Value != null)
                {

                    using (SqlConnection openCon = new SqlConnection(Conection.ConexLine))
                    {
                        string saveStaff = "UPDATE Producto SET Producto=@Producto, PrecioD=@PrecioD, Categoria=@Categoria, Cantidad=@Cantidad, Impuesto=@Impuesto, cpe=@cpe, Lote=@Lote, FechaVenc=@FechaVenc, Unidad=@Unidad, Foto=@Foto WHERE Row=@Row";

                        using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                        {
                            querySaveStaff.Connection = openCon;
                            querySaveStaff.Parameters.Add("@Producto", SqlDbType.VarChar).Value = Nombre.Value.ToString();
                            querySaveStaff.Parameters.Add("@Precio", SqlDbType.Money).Value = Double.Parse(Precio.Value) * 450;
                            querySaveStaff.Parameters.Add("@iDProducto", SqlDbType.UniqueIdentifier).Value = System.Guid.NewGuid();
                            querySaveStaff.Parameters.Add("@Foto", SqlDbType.Image).Value = Archivo;
                            querySaveStaff.Parameters.Add("@PrecioD", SqlDbType.Money).Value = Precio.Value;
                            querySaveStaff.Parameters.Add("@Categoria", SqlDbType.VarChar).Value = DropDownList1.SelectedValue;
                            querySaveStaff.Parameters.Add("@Cantidad", SqlDbType.Int).Value = Int16.Parse(Cantidad.Value);
                            querySaveStaff.Parameters.Add("@Impuesto", SqlDbType.VarChar).Value = DropDownList2.SelectedValue;
                            querySaveStaff.Parameters.Add("@Descuento", SqlDbType.VarChar).Value = "0";
                            querySaveStaff.Parameters.Add("@Tag", SqlDbType.VarChar).Value = Nombre.Value.Replace(" ", string.Empty).ToLower().ToString();
                            querySaveStaff.Parameters.Add("@inCart", SqlDbType.VarChar).Value = "0";
                            querySaveStaff.Parameters.Add("@PrecioCompra", SqlDbType.Money).Value = 0;
                            querySaveStaff.Parameters.Add("@cpe", SqlDbType.VarChar).Value = Text3.Value;
                            querySaveStaff.Parameters.Add("@Lote", SqlDbType.VarChar).Value = Text1.Value.ToString();
                            querySaveStaff.Parameters.Add("@FechaVenc", SqlDbType.DateTime).Value = Text2.Value;
                            querySaveStaff.Parameters.Add("@Unidad", SqlDbType.VarChar).Value = "";
                            querySaveStaff.Parameters.Add("@Codigo", SqlDbType.VarChar).Value = Request.Cookies["rowC"].Value;
                            querySaveStaff.Parameters.Add("@Row", SqlDbType.VarChar).Value = Request.Cookies["paramseisyuCB"].Value;
                            try
                            {
                                openCon.Open();
                                querySaveStaff.ExecuteNonQuery();
                                openCon.Close();
                                Response.Cookies["paramseisyuCB"].Expires = DateTime.Now.AddDays(-1);
                                Page.RegisterStartupScript("LoadFunction", "<script type='text/javascript'>alert('prodotto modificato');window.location='ProdEditar.aspx'</script>");
                            }
                            catch (SqlException ex)
                            {
                                Response.Write("Error" + ex);
                            }
                        }
                    }

                }
            }            
            else
            {
                if (Nombre.Value != null)
                {

                    using (SqlConnection openCon = new SqlConnection(Conection.ConexLine))
                    {
                        string saveStaff = "UPDATE Producto SET Producto=@Producto, PrecioD=@PrecioD, Categoria=@Categoria, Cantidad=@Cantidad, Impuesto=@Impuesto, cpe=@cpe, Lote=@Lote, FechaVenc=@FechaVenc, Unidad=@Unidad WHERE Row=@Row";

                        using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                        {
                            querySaveStaff.Connection = openCon;
                            querySaveStaff.Parameters.Add("@Producto", SqlDbType.VarChar).Value = Nombre.Value.ToString();
                            querySaveStaff.Parameters.Add("@Precio", SqlDbType.Money).Value = Double.Parse(Precio.Value) * 450;
                            querySaveStaff.Parameters.Add("@iDProducto", SqlDbType.UniqueIdentifier).Value = System.Guid.NewGuid();                  
                            querySaveStaff.Parameters.Add("@PrecioD", SqlDbType.Money).Value = Precio.Value;
                            querySaveStaff.Parameters.Add("@Categoria", SqlDbType.VarChar).Value = DropDownList1.SelectedValue;
                            querySaveStaff.Parameters.Add("@Cantidad", SqlDbType.Int).Value = Int16.Parse(Cantidad.Value);
                            querySaveStaff.Parameters.Add("@Impuesto", SqlDbType.VarChar).Value = DropDownList2.SelectedValue;
                            querySaveStaff.Parameters.Add("@Descuento", SqlDbType.VarChar).Value = "0";
                            querySaveStaff.Parameters.Add("@Tag", SqlDbType.VarChar).Value = Nombre.Value.Replace(" ", string.Empty).ToLower().ToString();
                            querySaveStaff.Parameters.Add("@inCart", SqlDbType.VarChar).Value = "0";
                            querySaveStaff.Parameters.Add("@PrecioCompra", SqlDbType.Money).Value = 0;
                            querySaveStaff.Parameters.Add("@cpe", SqlDbType.VarChar).Value = Text3.Value;
                            querySaveStaff.Parameters.Add("@Lote", SqlDbType.VarChar).Value = Text1.Value.ToString();
                            querySaveStaff.Parameters.Add("@FechaVenc", SqlDbType.DateTime).Value = Text2.Value;
                            querySaveStaff.Parameters.Add("@Unidad", SqlDbType.VarChar).Value = "";
                            querySaveStaff.Parameters.Add("@Codigo", SqlDbType.VarChar).Value = Request.Cookies["rowC"].Value;
                            querySaveStaff.Parameters.Add("@Row", SqlDbType.VarChar).Value = Request.Cookies["paramseisyuCB"].Value;
                            try
                            {
                                openCon.Open();
                                querySaveStaff.ExecuteNonQuery();
                                openCon.Close();
                                Response.Cookies["paramseisyuCB"].Expires = DateTime.Now.AddDays(-1);
                                Page.RegisterStartupScript("LoadFunction", "<script type='text/javascript'>alert('prodotto modificato');window.location='ProdEditar.aspx'</script>");

                                
                            }
                            catch (SqlException ex)
                            {
                                Response.Write("Error" + ex);
                            }
                        }
                    }

                }
            }

        }
    }
}