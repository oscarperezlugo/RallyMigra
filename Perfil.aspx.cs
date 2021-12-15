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
    public partial class Perfil : System.Web.UI.Page
    {
        byte[] FOTO;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Request.Cookies["rowCB"] != null)
            {
                string connectionString = Conection.ConexLine;
                string query = "SELECT PersonaFinal, sicm, Telefono2, Foto, Nombre, Tipo, Direccion, cpe, Correo, Contrasena, Telefono FROM Clientes WHERE Row=@Row";


                using (SqlConnection con = new SqlConnection(connectionString))
                using (SqlCommand cmd = new SqlCommand(query, con))
                {

                    cmd.Parameters.Add("@Row", SqlDbType.Int).Value = Request.Cookies["rowCB"].Value;



                    con.Open();


                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.Read())
                        {
                            
                            
                            if (dr.IsDBNull(3))
                            {

                            }
                            else
                            {
                                byte[] imagem = (byte[])(dr[3]);
                                FOTO = imagem;
                                string base64String = Convert.ToBase64String(imagem);
                                Avatar.ImageUrl = String.Format("data:image/jpg;base64,{0}", base64String);
                            }
                            if (dr.IsDBNull(0))
                            {

                            }
                            else
                            {
                                Nombre.Value = dr.GetFieldValue<string>(0);
                            }
                            if (dr.IsDBNull(1))
                            {

                            }
                            else
                            {
                                Precio.Value = dr.GetFieldValue<string>(1);
                            }
                            if (dr.IsDBNull(2))
                            {

                            }
                            else
                            {
                                Text4.Value = dr.GetFieldValue<string>(2);
                            }
                            if (dr.IsDBNull(4))
                            {

                            }
                            else
                            {
                                Text5.Value = dr.GetFieldValue<string>(4);
                            }
                            if (dr.IsDBNull(5))
                            {

                            }
                            else
                            {
                                DropDownList1.SelectedValue = dr.GetFieldValue<string>(5);
                            }
                            if (dr.IsDBNull(10))
                            {

                            }
                            else
                            {
                                Text7.Value = dr.GetFieldValue<string>(10);
                            }
                            if (dr.IsDBNull(6))
                            {

                            }
                            else
                            {
                                Text6.Value = dr.GetFieldValue<string>(6);
                            }
                            if (dr.IsDBNull(7))
                            {

                            }
                            else
                            {
                                Text8.Value = dr.GetFieldValue<string>(7);
                            }
                            if (dr.IsDBNull(8))
                            {

                            }
                            else
                            {
                                Cantidad.Value = dr.GetFieldValue<string>(8);
                            }
                            if (dr.IsDBNull(9))
                            {

                            }
                            else
                            {
                                Text1.Value = dr.GetFieldValue<string>(9);
                                Text3.Value = dr.GetFieldValue<string>(9);
                            }

                            
                           
                        }
                        else
                        {


                        }

                        dr.Close();
                    }

                    con.Close();
                }
                HttpCookie buscarS = new HttpCookie("rowCC");
                buscarS.Value = Request.Cookies["rowCB"].Value;
                buscarS.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(buscarS);
                Response.Cookies["rowCB"].Expires = DateTime.Now.AddDays(-1);

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
                    //FOTO = Convert.ToBase64String(Archivo);
                }
                nombreArchivo = Path.GetFileNameWithoutExtension(avatarUpload.Name);
                extensionArchivo = Path.GetExtension(avatarUpload.Name);
                
                using (SqlConnection openCon = new SqlConnection(Conection.ConexLine))
                {
                    string saveStaff = "UPDATE CLIENTES SET PersonaFinal=@Persona, sicm=@sicm, Telefono2=@Telefono2, Foto=@Foto, Nombre=@Nombre, Tipo=@Tipo, Direccion=@Direccion, cpe=@cpe, Correo=@Correo, Contrasena=@Contrasena, Telefono=@Telefono WHERE Row=@Row";

                    using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                    {
                        querySaveStaff.Connection = openCon;
                        querySaveStaff.Parameters.Add("@Persona", SqlDbType.VarChar).Value = Nombre.Value;
                        querySaveStaff.Parameters.Add("@sicm", SqlDbType.VarChar).Value = Precio.Value;
                        querySaveStaff.Parameters.Add("@Telefono2", SqlDbType.VarChar).Value = Text4.Value;
                        querySaveStaff.Parameters.Add("@Foto", SqlDbType.Image).Value = Archivo;
                        querySaveStaff.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = Text5.Value;
                        querySaveStaff.Parameters.Add("@Tipo", SqlDbType.VarChar).Value = DropDownList1.SelectedValue;
                        querySaveStaff.Parameters.Add("@Direccion", SqlDbType.VarChar).Value = Text6.Value;
                        querySaveStaff.Parameters.Add("@Cpe", SqlDbType.VarChar).Value = Text8.Value;
                        querySaveStaff.Parameters.Add("@Correo", SqlDbType.VarChar).Value = Cantidad.Value;
                        querySaveStaff.Parameters.Add("@Contrasena", SqlDbType.VarChar).Value = Text1.Value;
                        querySaveStaff.Parameters.Add("@Telefono", SqlDbType.VarChar).Value = Text7.Value;
                        querySaveStaff.Parameters.Add("@Row", SqlDbType.VarChar).Value = Request.Cookies["rowCC"].Value;
                        try
                        {
                            openCon.Open();
                            querySaveStaff.ExecuteNonQuery();
                            openCon.Close();
                            
                            Response.Cookies["rowCC"].Expires = DateTime.Now.AddDays(-1);
                            Page.RegisterStartupScript("LoadFunction", "<script type='text/javascript'>alert('Act');window.location='Default.aspx'</script>");

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
                using (SqlConnection openCon = new SqlConnection(Conection.ConexLine))
                {
                    string saveStaff = "UPDATE CLIENTES SET PersonaFinal=@Persona, sicm=@sicm, Telefono2=@Telefono2, Nombre=@Nombre, Tipo=@Tipo, Direccion=@Direccion, cpe=@cpe, Correo=@Correo, Contrasena=@Contrasena, Telefono=@Telefono WHERE Row=@Row";

                    using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                    {
                        querySaveStaff.Connection = openCon;
                        querySaveStaff.Parameters.Add("@Persona", SqlDbType.VarChar).Value = Nombre.Value;
                        querySaveStaff.Parameters.Add("@sicm", SqlDbType.VarChar).Value = Precio.Value;
                        querySaveStaff.Parameters.Add("@Telefono2", SqlDbType.VarChar).Value = Text4.Value;                        
                        querySaveStaff.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = Text5.Value;
                        querySaveStaff.Parameters.Add("@Tipo", SqlDbType.VarChar).Value = DropDownList1.SelectedValue;
                        querySaveStaff.Parameters.Add("@Direccion", SqlDbType.VarChar).Value = Text6.Value;
                        querySaveStaff.Parameters.Add("@Cpe", SqlDbType.VarChar).Value = Text8.Value;
                        querySaveStaff.Parameters.Add("@Correo", SqlDbType.VarChar).Value = Cantidad.Value;
                        querySaveStaff.Parameters.Add("@Contrasena", SqlDbType.VarChar).Value = Text1.Value;
                        querySaveStaff.Parameters.Add("@Telefono", SqlDbType.VarChar).Value = Text7.Value;
                        querySaveStaff.Parameters.Add("@Row", SqlDbType.VarChar).Value = Request.Cookies["rowCC"].Value;
                        try
                        {
                            openCon.Open();
                            querySaveStaff.ExecuteNonQuery();
                            openCon.Close();
                            
                            Response.Cookies["rowCC"].Expires = DateTime.Now.AddDays(-1);
                            Page.RegisterStartupScript("LoadFunction", "<script type='text/javascript'>alert('Act');window.location='Default.aspx'</script>");

                        }
                        catch (SqlException ex)
                        {
                            Response.Write("Error" + ex);
                        }
                    }
                }

            }
            

        }
        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            HttpCookie buscarS = new HttpCookie("rowCD");
            buscarS.Value = Request.Cookies["rowC"].Value;
            buscarS.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(buscarS);
            Response.Redirect("Orario.aspx");
        }
        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            HttpCookie buscarS = new HttpCookie("rowCE");
            buscarS.Value = Request.Cookies["rowC"].Value;
            buscarS.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(buscarS);
            Response.Redirect("Cuenta.aspx");
        }
    }
}