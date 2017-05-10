using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ListView1.DataSource = this.Novo();
            ListView1.DataBind();
        }

        if (!IsPostBack)
        {
            ListView2.DataSource = this.telemoveis();
            ListView2.DataBind();
        }

        if (!IsPostBack)
        {
            ListView3.DataSource = this.tablets();
            ListView3.DataBind();
        }

        if (!IsPostBack)
        {
            ListView4.DataSource = this.acessorios();
            ListView4.DataBind();
        }

        if (!IsPostBack)
        {
            ListView5.DataSource = this.marcas();
            ListView5.DataBind();
        }
        
    }

    private DataSet Novo()
    {
        string conString = ConfigurationManager.ConnectionStrings["CARP"].ConnectionString;
        string query = "SELECT top 4* FROM Produtos ORDER BY DataRegisto DESC";
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

    private DataSet telemoveis()
    {
        string conString = ConfigurationManager.ConnectionStrings["CARP"].ConnectionString;
        string query = "SELECT top 3* FROM Produtos WHERE TipoProdutoId='1' ORDER BY NEWID()";
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

    private DataSet tablets()
    {
        string conString = ConfigurationManager.ConnectionStrings["CARP"].ConnectionString;
        string query = "SELECT top 3* FROM Produtos WHERE TipoProdutoId='2' ORDER BY NEWID()";
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

    private DataSet acessorios()
    {
        string conString = ConfigurationManager.ConnectionStrings["CARP"].ConnectionString;
        string query = "SELECT top 3* FROM Produtos WHERE TipoProdutoId='3' ORDER BY NEWID()";
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

    private DataSet marcas()
    {
        string conString = ConfigurationManager.ConnectionStrings["CARP"].ConnectionString;
        string query = "SELECT * FROM Marcas";
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