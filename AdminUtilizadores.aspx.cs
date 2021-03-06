﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class AdminUtilizadores : System.Web.UI.Page
{
    private string strcon = WebConfigurationManager.ConnectionStrings["CARP"].ConnectionString;


    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void userregister_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CARP"].ConnectionString);

        con.Open();

        String verificautilizador = "select count(*) from Utilizadores where Email='" + txtemail.Text + "' ";

        SqlCommand comando = new SqlCommand(verificautilizador, con);
        int temp = Convert.ToInt32(comando.ExecuteScalar().ToString());
        con.Close();

        if (temp == 0)
        {
            iuser.SaveAs(Server.MapPath("img//" + iuser.FileName));
            new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "utilizadores_CRUD";
            cmd.Parameters.AddWithValue("@acao", "INSERT");
            cmd.Parameters.AddWithValue("@Email", txtemail.Text);
            cmd.Parameters.AddWithValue("@PalavraPasse", txtpass.Text);
            cmd.Parameters.AddWithValue("@Nome", txtnome1.Text + " " + txtnome2.Text);
            cmd.Parameters.AddWithValue("@Dinheiro", txtdinheiro.Text);
            cmd.Parameters.AddWithValue("@Pais", Paises.Text);
            cmd.Parameters.AddWithValue("@Rua", txtrua.Text);
            cmd.Parameters.AddWithValue("@Cidade", txtcidade.Text);
            cmd.Parameters.AddWithValue("@Distrito", txtdistrito.Text);
            cmd.Parameters.AddWithValue("@CodigoPostal", txtcp1.Text);
            cmd.Parameters.AddWithValue("@Contribuinte", txtcont.Text);
            cmd.Parameters.AddWithValue("@Imagem", Path.GetFileName(iuser.PostedFile.FileName));

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            txtemail.Text = "";
            txtpass.Text = "";
            txtnome1.Text = "";
            txtnome2.Text = "";
            Paises.Text = "";
            txtrua.Text = "";
            txtdinheiro.Text = "";
            txtcidade.Text = "";
            txtdistrito.Text = "";
            txtcp1.Text = "";
            txtcont.Text = "";

        }

        else
        {
            Response.Write("O email inserido já pertence a uma conta existente.");
        }


    }
        protected void goutilizadores_Click(object sender, EventArgs e)
        {
            Response.Redirect("_AdminUtilizadores.aspx");
        }
        protected void goprodutos_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminProdutos.aspx");
        }
}