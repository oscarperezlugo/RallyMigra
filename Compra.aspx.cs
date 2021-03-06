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
    public partial class Compra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            System.Guid GUID = System.Guid.NewGuid();
            HttpCookie indexS = new HttpCookie("clienteC");
            indexS.Value = DropDownList1.SelectedValue;
            indexS.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(indexS);
            HttpCookie index2S = new HttpCookie("idventaC");
            index2S.Value = GUID.ToString();
            index2S.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(index2S);
            using (SqlConnection openCon = new SqlConnection(Conection.ConexLine))
            {
                string saveStaff = "INSERT into Cabecera (FechaVenta, iDVenta, Tipo, Status, FechaPago) VALUES (@FechaVenta, @iDVenta, @Tipo, 'PENDIENTE', @FechaPago)";

                using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                {
                    querySaveStaff.Connection = openCon;
                    querySaveStaff.Parameters.Add("@FechaVenta", SqlDbType.DateTime).Value = DateTime.Now;
                    querySaveStaff.Parameters.Add("@iDVenta", SqlDbType.UniqueIdentifier).Value = GUID;
                    querySaveStaff.Parameters.Add("@Tipo", SqlDbType.VarChar).Value = "COMPRA";
                    querySaveStaff.Parameters.Add("@FechaPago", SqlDbType.Date).Value = DateTime.Parse(Nombre.Value);

                    try
                    {
                        openCon.Open();
                        querySaveStaff.ExecuteNonQuery();
                        openCon.Close();
                    }
                    catch (SqlException ex)
                    {
                        Response.Write("Error" + ex);
                    }
                }
                Response.Redirect("PedidoCuatro.aspx");
            }
        }
    }
}