using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PanelAdmin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            string connectionString = Conection.ConexLine;
            string query = "SELECT Row FROM Clientes WHERE Correo=@Correo AND Contrasena=@Pass";


            using (SqlConnection con = new SqlConnection(connectionString))
            using (SqlCommand cmd = new SqlCommand(query, con))
            {

                cmd.Parameters.Add("@Correo", SqlDbType.VarChar, 50).Value = Correo.Value.ToString();
                cmd.Parameters.Add("@Pass", SqlDbType.VarChar, 50).Value = Contrasena.Value.ToString();


                con.Open();


                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    if (dr.Read())
                    {
                        
                        int Row = dr.GetFieldValue<int>(0);
                        

                        //if (dr.IsDBNull(4))
                        //{

                        //}
                        //else
                        //{
                        //    byte[] imagem = (byte[])(dr[4]);
                        //    string base64String = Convert.ToBase64String(imagem);
                        //    HttpCookie perfilS2 = new HttpCookie("FotoC");
                        //    perfilS2.Value = base64String;
                        //    perfilS2.Expires = DateTime.Now.AddDays(30);
                        //    Response.Cookies.Add(perfilS2);
                        //}

                        //HttpCookie nombreS = new HttpCookie("nombreC");
                        //nombreS.Value = nombre;
                        //nombreS.Expires = DateTime.Now.AddDays(30);
                        //Response.Cookies.Add(nombreS);

                        //HttpCookie nombre2S = new HttpCookie("appellC");
                        //nombre2S.Value = Apellido;
                        //nombre2S.Expires = DateTime.Now.AddDays(30);
                        //Response.Cookies.Add(nombre2S);

                        HttpCookie idclienteS = new HttpCookie("rowC");
                        idclienteS.Value = Row.ToString();
                        idclienteS.Expires = DateTime.Now.AddDays(30);
                        Response.Cookies.Add(idclienteS);

                        HttpCookie perfilS = new HttpCookie("indexC");
                        perfilS.Value = "1";
                        perfilS.Expires = DateTime.Now.AddDays(30);
                        Response.Cookies.Add(perfilS);




                        Response.Write("<script>alert('BIENVENIDO')</script>");


                        Response.Redirect("Default.aspx");



                    }
                    else
                    {
                        Response.Write("<script>alert('Usuario y Contraseña incorrectos')</script>");

                    }

                    dr.Close();
                }

                con.Close();
            }
        }
    }
}