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
    public partial class OrdenDetalle : System.Web.UI.Page
    {
        string FOTO;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["ordineC"] != null)
            {
                string connectionString = Conection.ConexLine;
                string query = "SELECT Row FROM Cabecera WHERE Row=@Row";


                using (SqlConnection con = new SqlConnection(connectionString))
                using (SqlCommand cmd = new SqlCommand(query, con))
                {

                    cmd.Parameters.Add("@Row", SqlDbType.Int).Value = Request.Cookies["ordineC"].Value;



                    con.Open();


                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.Read())
                        {
                            Label2.Text = dr.GetFieldValue<Int32>(0).ToString();

                        }
                        else
                        {


                        }

                        dr.Close();
                    }

                    con.Close();
                }
                string connectionString2 = Conection.ConexLine;
                string query2 = "SELECT MontoD, Metodo, ValorEnvio, Propina, Hora FROM Cabecera WHERE Row=@Row";


                using (SqlConnection con2 = new SqlConnection(connectionString2))
                using (SqlCommand cmd2 = new SqlCommand(query2, con2))
                {

                    cmd2.Parameters.Add("@Row", SqlDbType.Int).Value = Request.Cookies["ordineC"].Value;



                    con2.Open();


                    using (SqlDataReader dr2 = cmd2.ExecuteReader())
                    {
                        if (dr2.Read())
                        {
                            Label10.Text = dr2.GetFieldValue<decimal>(0).ToString();
                            Label16.Text = dr2.GetFieldValue<string>(1).ToString();
                            Label8.Text = dr2.GetFieldValue<string>(4).ToString();
                            Label15.Text = dr2.GetFieldValue<decimal>(3).ToString();
                            Label12.Text = dr2.GetFieldValue<decimal>(2).ToString();                           
                        }
                        else
                        {


                        }

                        dr2.Close();
                    }

                    con2.Close();
                }
                
            }
            else
            {

            }
        }       
        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection openCon = new SqlConnection(Conection.ConexLine))
            {
                string saveStaff = "UPDATE Cabecera SET Status = 'in lavorazione' WHERE Row = @Row";

                using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                {

                    querySaveStaff.Connection = openCon;                                       
                    querySaveStaff.Parameters.Add("@Row", SqlDbType.VarChar).Value = Request.Cookies["ordineC"].Value;
                    try
                    {
                        openCon.Open();
                        querySaveStaff.ExecuteNonQuery();
                        openCon.Close();
                        
                        Response.Write("<script>alert('in lavorazione')</script>");
                    }
                    catch (SqlException ex)
                    {
                        Response.Write("Error" + ex);
                    }
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection openCon = new SqlConnection(Conection.ConexLine))
            {
                string saveStaff = "UPDATE Cabecera SET Status = 'Anullato' WHERE Row = @Row";

                using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                {

                    querySaveStaff.Connection = openCon;
                    querySaveStaff.Parameters.Add("@Row", SqlDbType.VarChar).Value = Request.Cookies["ordineC"].Value;
                    try
                    {
                        openCon.Open();
                        querySaveStaff.ExecuteNonQuery();
                        openCon.Close();

                        Response.Write("<script>alert('Anullato')</script>");
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