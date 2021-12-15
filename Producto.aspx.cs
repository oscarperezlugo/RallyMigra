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
    public partial class Producto : System.Web.UI.Page
    {
        string FOTO;
        protected void Page_Load(object sender, EventArgs e)
        {

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
            }
            if (Nombre.Value !=null)
            {

                using (SqlConnection openCon = new SqlConnection(Conection.ConexLine))
                {
                    string saveStaff = "INSERT into Producto (Producto, Precio, iDProducto, Foto, PrecioD, Categoria, Cantidad, Impuesto, Descuento, Tag, inCart, PrecioCompra, cpe, Lote, FechaVenc, Unidad, Codigo) VALUES (@Producto, @Precio, @iDProducto, @Foto, @PrecioD, @Categoria, @Cantidad, @Impuesto, @Descuento, @Tag, @inCart, @PrecioCompra, @cpe, @Lote, @FechaVenc, @Unidad, @Codigo)";

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
                        try
                        {
                            openCon.Open();
                            querySaveStaff.ExecuteNonQuery();
                            openCon.Close();
                            Page.RegisterStartupScript("LoadFunction", "<script type='text/javascript'>alert('prodotto creato');window.location='Default.aspx'</script>");

                        }
                        catch (SqlException ex)
                        {
                            Response.Write("Error" + ex);
                        }
                    }
                }

            }
            else
            {
                Response.Write("<script>alert('dati incompleti')</script>");
            }

        }
    }
}