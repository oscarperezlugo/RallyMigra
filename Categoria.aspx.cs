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
    public partial class Categoria : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Byte[] Archivo = null;
            
            if (avatarUpload.Value != "")
            {
                using (BinaryReader reader = new
                BinaryReader(avatarUpload.PostedFile.InputStream))
                {
                    Archivo = reader.ReadBytes(avatarUpload.PostedFile.ContentLength);
                    
                }                
            }
            if (Nombre.Value !=null)
            {

                using (SqlConnection openCon = new SqlConnection(Conection.ConexLine))
                {
                    string saveStaff = "INSERT into Categorias (Categoria, Foto, Codigo) VALUES (@Categoria, @Foto, @Codigo)";

                    using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                    {
                        querySaveStaff.Connection = openCon;
                        querySaveStaff.Parameters.Add("@Categoria", SqlDbType.VarChar).Value = Nombre.Value.ToString();
                        querySaveStaff.Parameters.Add("@Codigo", SqlDbType.VarChar).Value = Request.Cookies["rowC"].Value;
                        querySaveStaff.Parameters.Add("@Foto", SqlDbType.Image).Value = Archivo;                        
                        try
                        {
                            openCon.Open();
                            querySaveStaff.ExecuteNonQuery();
                            openCon.Close();
                            Response.Write("<script>alert('CATEGORIA CREADA')</script>");
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
                Response.Write("<script>alert('DATOS INCOMPLETOS')</script>");
            }

        }
    }
}