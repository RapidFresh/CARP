using System;
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
            cmd.Parameters.AddWithValue("@Dinheiro", 0.00);
            cmd.Parameters.AddWithValue("@Pais", Paises.Text);
            cmd.Parameters.AddWithValue("@Rua", txtrua.Text);
            cmd.Parameters.AddWithValue("@Cidade", txtcidade.Text);
            cmd.Parameters.AddWithValue("@Distrito", txtdistrito.Text);
            cmd.Parameters.AddWithValue("@CodigoPostal", txtcp1.Text + "-" + txtcp2.Text);
            cmd.Parameters.AddWithValue("@Contribuinte", txtcont.Text);
            cmd.Parameters.AddWithValue("@Imagem", Path.GetFileName(iuser.PostedFile.FileName));

            Label1.Text = "Image Uploaded";
            Label1.ForeColor = System.Drawing.Color.ForestGreen;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        else
        {
            Response.Write("O email inserido já pertence a uma conta existente.");
        }
    }
    protected void teste(object sender, EventArgs e)
    {
        throw new Exception("asdhasdj");
    }
}