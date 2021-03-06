﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Tablet : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ListView1.DataSource = this.GetData();
            ListView1.DataBind();
        }

    }

    public static class IdProduto
    {
        public static string idproduto { get; set; }
    }


    public static string simples;

    int page = 1;

    private DataSet GetData()
    {
        string conString = ConfigurationManager.ConnectionStrings["CARP"].ConnectionString;
        string query = "SELECT * FROM Produtos  WHERE TipoProdutoId='2' ORDER BY 'ID' OFFSET 0 ROWS FETCH NEXT 12 ROWS ONLY";
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