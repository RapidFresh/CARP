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

public partial class AdminProdutos : System.Web.UI.Page
{
    private string strcon = WebConfigurationManager.ConnectionStrings["CARP"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        //Display dos items da tabela Marcas
        SqlConnection conM = new SqlConnection(ConfigurationManager.ConnectionStrings["CARP"].ConnectionString);
        string comM = "Select * from Marcas";
        SqlDataAdapter adptM = new SqlDataAdapter(comM, conM);
        DataTable dtM = new DataTable();
        adptM.Fill(dtM);
        txtMarca.DataSource = dtM;
        txtMarca.DataBind();
        txtMarca.DataTextField = "Nome";
        txtMarca.DataValueField = "ID";
        txtMarca.DataBind();

        //Display dos items da tabela TipoProdutos
        SqlConnection conTP = new SqlConnection(ConfigurationManager.ConnectionStrings["CARP"].ConnectionString);
        string comTP = "Select * from TipoProduto";
        SqlDataAdapter adptTP = new SqlDataAdapter(comTP, conTP);
        DataTable dtTP = new DataTable();
        adptTP.Fill(dtTP);
        txtTipoP.DataSource = dtTP;
        txtTipoP.DataBind();
        txtTipoP.DataTextField = "TipoProduto";
        txtTipoP.DataValueField = "Id";
        txtTipoP.DataBind();
    }

    protected void produtoregister_Click(object sender, EventArgs e)
    {


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CARP"].ConnectionString);


        iprod.SaveAs(Server.MapPath("img//" + iprod.FileName));
        new SqlConnection(strcon);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "produtos_CRUD";
        cmd.Parameters.AddWithValue("@acao", "INSERT");
        cmd.Parameters.AddWithValue("@TipoProdutoId", txtTipoP.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@Marca", txtMarca.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@Modelo", txtmodelo.Text);
        cmd.Parameters.AddWithValue("@Descrição", txtdescricao.Text);
        cmd.Parameters.AddWithValue("@Preço", txtpreco.Text);
        cmd.Parameters.AddWithValue("@Disponibilidade", txtdisponibilidade.Text);
        cmd.Parameters.AddWithValue("@Desconto", txtdesconto.Text);
        cmd.Parameters.AddWithValue("@DataRegisto", System.DateTime.Now);
        cmd.Parameters.AddWithValue("@ImagemPrincipal", Path.GetFileName(iprod.PostedFile.FileName));

        if (txtTipoP.SelectedItem.Value == "1"){
            cmd.Parameters.AddWithValue("@SistemaOperativo", txtsistemaoperativo.Text);
            cmd.Parameters.AddWithValue("@Processador", txtprocessador.Text);
            cmd.Parameters.AddWithValue("@SIMFormato", txtsimformato.Text);
            cmd.Parameters.AddWithValue("@SIMDual", txtsimdual.Text);
            cmd.Parameters.AddWithValue("@Operador", txtoperador.Text);
            cmd.Parameters.AddWithValue("@Rede", txtrede.Text);
            cmd.Parameters.AddWithValue("@EcraTipo", txtecratipo.Text);
            cmd.Parameters.AddWithValue("@EcraDimensao", txtecradimensao.Text);
            cmd.Parameters.AddWithValue("@Ecraresolucao", txtecraresolucao.Text);
            cmd.Parameters.AddWithValue("@WIFI", txtwifi.Text);
            cmd.Parameters.AddWithValue("@Bluetooth", txtbluetooth.Text);
            cmd.Parameters.AddWithValue("@NFC", txtnfc.Text);
            cmd.Parameters.AddWithValue("@Entrada", txtentrada.Text);
            cmd.Parameters.AddWithValue("@CamaraResolucao", txtcamararesolucao.Text);
            cmd.Parameters.AddWithValue("@CamaraFlash",txtcamaraflash.Text);
            cmd.Parameters.AddWithValue("@CamaraSecundaria", txtcamara2.Text);
            cmd.Parameters.AddWithValue("@CamaraSecundariaResolucao", txtcamara2resolucao.Text);
            cmd.Parameters.AddWithValue("@CamaraSecundariaFlash", txtcamara2flash.Text);
            cmd.Parameters.AddWithValue("@Dimensoes", txtdimensoes.Text);
            cmd.Parameters.AddWithValue("@Peso", txtpeso.Text);
            cmd.Parameters.AddWithValue("@Cores", txtcores.Text);
            cmd.Parameters.AddWithValue("@MemoriaInterna", txtmemoriainterna.Text);
            cmd.Parameters.AddWithValue("@MemoriaExterna", txtmemoriaexterna.Text);
            cmd.Parameters.AddWithValue("@MemoriaRAM", txtmemoriaram.Text);
            cmd.Parameters.AddWithValue("@GPS", txtgps.Text);
        }


        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
            ////txtTipoP.Text = "";
            //txtmodelo.Text = "";
            //txtnome1.Text = "";
            //txtnome2.Text = "";
            //txtrua.Text = "";
            //txtdinheiro.Text = "";
            //txtdistrito.Text = "";
            //txtcp1.Text = "";
            //txtcont.Text = "";

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