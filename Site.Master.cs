using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Permissions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Caching;

namespace PanelAdmin
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (Request.Cookies["rowC"] != null)
            {

                string connectionString = Conection.ConexLine;
                string query = "SELECT Nombre, Foto, TipoCliente, Apellido FROM Clientes WHERE Row=@Row";


                using (SqlConnection con = new SqlConnection(connectionString))
                using (SqlCommand cmd = new SqlCommand(query, con))
                {

                    cmd.Parameters.Add("@Row", SqlDbType.Int).Value = Request.Cookies["RowC"].Value;



                    con.Open();


                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.Read())
                        {
                            string nombre = dr.GetFieldValue<string>(0);
                            string Perfil = dr.GetFieldValue<string>(2);
                            string Apellido = dr.GetFieldValue<string>(3);
                            HttpCookie nombreS = new HttpCookie("nombreC");
                            nombreS.Value = nombre;
                            nombreS.Expires = DateTime.Now.AddDays(30);
                            Response.Cookies.Add(nombreS);

                            HttpCookie nombre2S = new HttpCookie("appellC");
                            nombre2S.Value = Apellido;
                            nombre2S.Expires = DateTime.Now.AddDays(30);
                            Response.Cookies.Add(nombre2S);

                            HttpCookie perfilS = new HttpCookie("PerfilC");
                            perfilS.Value = Perfil;
                            perfilS.Expires = DateTime.Now.AddDays(30);
                            Response.Cookies.Add(perfilS);

                            HttpCookie perfilS3 = new HttpCookie("indexC");
                            perfilS3.Value = "0";
                            perfilS3.Expires = DateTime.Now.AddDays(30);
                            Response.Cookies.Add(perfilS3);

                            Label1.Text = "" + Request.Cookies["nombreC"].Value + " " + Request.Cookies["appellC"].Value + "";                            

                            if (dr.IsDBNull(1))
                            {

                            }
                            else
                            {
                                byte[] imagem = (byte[])(dr[1]);
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
                string connectionString2 = Conection.ConexLine;
                string query2 = "select count(Row) as notif  from Notificaciones where UsuarioRel = @Row and Estatus = 'Pendiente'";


                using (SqlConnection con2 = new SqlConnection(connectionString2))
                using (SqlCommand cmd2 = new SqlCommand(query2, con2))
                {

                    cmd2.Parameters.Add("@Row", SqlDbType.Int).Value = Request.Cookies["RowC"].Value;



                    con2.Open();


                    using (SqlDataReader dr2 = cmd2.ExecuteReader())
                    {
                        if (dr2.Read())
                        {
                            int notif = dr2.GetFieldValue<int>(0);
                            if(notif == 0)
                            {
                                labelnot.Attributes.Add("style", "display:none");
                            }
                            else
                            {
                                labelnot.Text = notif.ToString();
                            }
                            

                        }
                        else
                        {


                        }

                        dr2.Close();
                    }

                    con2.Close();
                }
                if (Request.Cookies["perfilC"] != null)
                {

                    if (Request.Cookies["perfilC"].Value == "REST")
                    {

                    }
                    else if (Request.Cookies["perfilC"].Value == "VENDEDOR")
                    {
                        bloque2.Attributes.Add("style", "display:none");
                        //bloque3.Attributes.Add("style", "display:none");
                        //bloque4.Attributes.Add("style", "display:none");
                    }
                    else if (Request.Cookies["perfilC"].Value == "CONTADOR")
                    {
                        bloque2.Attributes.Add("style", "display:none");
                        //bloque3.Attributes.Add("style", "display:none");
                        bloque1.Attributes.Add("style", "display:none");
                        //bloque5.Attributes.Add("style", "display:none");
                    }
                    else if (Request.Cookies["perfilC"].Value == "SERVICIO")
                    {
                        //bloque4.Attributes.Add("style", "display:none");
                        //bloque3.Attributes.Add("style", "display:none");
                        bloque1.Attributes.Add("style", "display:none");
                        //bloque5.Attributes.Add("style", "display:none");
                    }
                    else
                    {

                        Page.RegisterStartupScript("LoadFunction", "<script type='text/javascript'>alert('NO AUTORIZADO');window.location='Login.aspx'</script>");
                    }
                }
                else
                {
                    Page.RegisterStartupScript("LoadFunction", "<script type='text/javascript'>alert('NO AUTORIZADO');window.location='Login.aspx'</script>");
                }
            }
            else
            {
                Page.RegisterStartupScript("LoadFunction", "<script type='text/javascript'>alert('NO AUTORIZADO');window.location='Login.aspx'</script>");
            }



        }
        private string GetConnectionString()
        {
            // To avoid storing the connection string in your code,
            // you can retrieve it from a configuration file.
            return Conection.ConexLine;
        }
        private string GetSQL()
        {
            return "SELECT select count(Row) as notif  from Notificaciones where UsuarioRel = "+Request.Cookies["RowC"]+" and Estatus = 'Pendiente'";
        }
        private bool CanRequestNotifications()
        {
            SqlClientPermission permission =
                new SqlClientPermission(
                PermissionState.Unrestricted);
            try
            {
                permission.Demand();
                return true;
            }
            catch (System.Exception)
            {
                return false;
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            if (HttpContext.Current != null)
            {
                int cookieCount = HttpContext.Current.Request.Cookies.Count;
                for (var i = 0; i < cookieCount; i++)
                {
                    var cookie = HttpContext.Current.Request.Cookies[i];
                    if (cookie != null)
                    {
                        var expiredCookie = new HttpCookie(cookie.Name)
                        {
                            Expires = DateTime.Now.AddDays(-1),
                            Domain = cookie.Domain
                        };
                        HttpContext.Current.Response.Cookies.Add(expiredCookie); // overwrite it
                    }
                }

                // clear cookies server side
                HttpContext.Current.Request.Cookies.Clear();
            }
            Response.Redirect("Login.aspx");
        }
        protected void Unnamed_ClickDos(object sender, EventArgs e)
        {
            HttpCookie buscarS = new HttpCookie("rowCB");
            buscarS.Value = Request.Cookies["rowC"].Value;
            buscarS.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(buscarS);
            Response.Redirect("Perfil.aspx");
        }
        protected void Unnamed_ClickTres(object sender, EventArgs e)
        {
            HttpCookie buscarS = new HttpCookie("rowCC");
            buscarS.Value = Request.Cookies["rowC"].Value;
            buscarS.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(buscarS);
            Response.Redirect("Cuenta.aspx");
        }
        protected void Unnamed_ClickCuatro(object sender, EventArgs e)
        {
            HttpCookie buscarS = new HttpCookie("rowCD");
            buscarS.Value = Request.Cookies["rowC"].Value;
            buscarS.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(buscarS);
            Response.Redirect("Orario.aspx");
        }
    }
}