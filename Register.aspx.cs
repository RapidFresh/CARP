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

public partial class Register : System.Web.UI.Page
{

    private string strcon = WebConfigurationManager.ConnectionStrings["CARP"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnregister_Click(object sender, EventArgs e)
    {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CARP"].ConnectionString);

            con.Open();

            String verificautilizador = "select count(*) from Utilizadores where Email='" + txt_email.Text + "' ";

            SqlCommand comando = new SqlCommand(verificautilizador, con);
            int temp = Convert.ToInt32(comando.ExecuteScalar().ToString());
            con.Close();

            if (temp == 0)
            {
                new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "utilizadores_CRUD";
                cmd.Parameters.AddWithValue("@acao", "INSERT");
                cmd.Parameters.AddWithValue("@Email", txt_email.Text);
                cmd.Parameters.AddWithValue("@PalavraPasse", txt_pass.Text);
                cmd.Parameters.AddWithValue("@Nome", txt_nome.Text + " " + txt_nome2.Text);
                cmd.Parameters.AddWithValue("@Dinheiro", 0.00);
                cmd.Parameters.AddWithValue("@Pais", null);
                cmd.Parameters.AddWithValue("@Rua", null);
                cmd.Parameters.AddWithValue("@Cidade", null);
                cmd.Parameters.AddWithValue("@Distrito", null);
                cmd.Parameters.AddWithValue("@CodigoPostal", null);
                cmd.Parameters.AddWithValue("@Contribuinte", null);
                cmd.Parameters.AddWithValue("@Imagem", null);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("O email inserido já pertence a uma conta existente.");
            }
        
    }
}