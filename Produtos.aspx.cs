using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Produtos : System.Web.UI.Page
{
   


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ListView1.DataSource = this.GetData();
            ListView1.DataSource = this.GetDatatable2();
            ListView1.DataBind();
        }
    }

   private void Update()
    {

    }

    private void Insert()
    {

    }

    private DataSet GetData()
    {
        string conString = ConfigurationManager.ConnectionStrings["CARP"].ConnectionString;
        string query = "SELECT * FROM Produtos WHERE Id= '" + Request.QueryString["Id"] + "'";
        SqlCommand cmd = new SqlCommand(query);
        using (SqlConnection con = new SqlConnection(conString))
        {
            using (SqlDataAdapter sda = new SqlDataAdapter())
            {
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                using (DataSet ds = new DataSet())
                {
                    sda.Fill(ds);
                    return ds;
                }
            }
        }
    }

    private DataSet GetDatatable2()
    {
        string conString = ConfigurationManager.ConnectionStrings["CARP"].ConnectionString;
        string query = "SELECT * FROM Produtos WHERE Id= '" + Request.QueryString["Id"] + "'";
        SqlCommand cmd = new SqlCommand(query);
        using (SqlConnection con = new SqlConnection(conString))
        {
            using (SqlDataAdapter sda = new SqlDataAdapter())
            {
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                using (DataSet ds = new DataSet())
                {
                    sda.Fill(ds);
                    return ds;
                }
            }
        }
    }
}