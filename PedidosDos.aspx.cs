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
    public partial class PedidosDos : System.Web.UI.Page
    {
        DataTable DET;
        string search;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(Conection.ConexLine);
            SqlDataAdapter sda = new SqlDataAdapter("select * from Cabecera where status = 'Pendiente' order by row desc", con);
            DataTable dt = new DataTable();
            DET = dt;
            sda.Fill(dt);
            if (Request.Cookies["RowC"] != null)
            {
                search = Request.Cookies["rowC"].Value;
                if (search != null)
                {
                    DataTable dtResult = dt.Select("Vendedor = " + search + "").CopyToDataTable();
                    if (dtResult != null)
                    {
                        ListView1.DataSource = dtResult;
                    }
                    else
                    {

                    }

                }
                else
                {

                    ListView1.DataSource = dt;

                }
                ListView1.DataBind();

            }
            else
            {
                ListView1.DataBind();
            }
           
            
        

            
        }
        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int i = ListView1.SelectedIndex;
        }

        protected void ListView1_SelectedIndexChanged(object sender, ListViewSelectEventArgs e)
        {
            ListViewItem item = (ListViewItem)ListView1.Items[e.NewSelectedIndex];
            Label l = (Label)item.FindControl("titulotiendaweb");

            HttpCookie nombreS = new HttpCookie("tituloC");
            nombreS.Value = "";
            nombreS.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(nombreS);

        }
        protected void msg_list_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            HttpCookie nombreS = new HttpCookie("ordineC");
            nombreS.Value = e.CommandArgument.ToString();
            nombreS.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(nombreS);

            Response.Redirect("OrdenDetalle.aspx");
        }
    }
}