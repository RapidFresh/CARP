<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Principal.master"  AutoEventWireup="true" CodeFile="AdminUtilizadores.aspx.cs" Inherits="AdminUtilizadores" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <form runat="server">
  
    <div class="catadmin">

        <asp:Button ID="goutilizadores" class="catadminbutton  buttonactive" runat="server" Text="Utilizadores" />
        <br />
        <asp:Button ID="goprodutos" class="catadminbutton" runat="server" OnClick="goprodutos_Click" Text="Produtos" />
        <br />
        <asp:Button ID="gomarca" class="catadminbutton" runat="server" Text="Marcas" />

    </div>

    <div class="tableuse">
        <asp:Label ID="Autilizadores" runat="server" Font-Size="Larger" CssClass="colortitle" Text="Adicionar Utilizador"></asp:Label>
        <br />
        <br />

        <asp:TextBox ID="txtnome1" placeholder="Primeiro nome" CssClass="gimmyspace" runat="server" Width="145px"></asp:TextBox>
        <asp:TextBox ID="txtnome2" placeholder="Ultimo nome" runat="server" Width="145px" CssClass="rightgogo"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtpass"  placeholder="Palavra-Passe" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtemail" placeholder="Email" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
        <br />
        <asp:DropDownList CssClass="gimmyspace" ID="Paises" Width="100%" runat="server">
            <asp:ListItem Selected="true">Escolher País</asp:ListItem>
            <asp:ListItem>United States</asp:ListItem>
            <asp:ListItem>Afghanistan</asp:ListItem>
            <asp:ListItem>Albania</asp:ListItem>
            <asp:ListItem>Algeria</asp:ListItem>
            <asp:ListItem>American Samoa</asp:ListItem>
            <asp:ListItem>Andorra</asp:ListItem>
            <asp:ListItem>Angola</asp:ListItem>
            <asp:ListItem>Anguilla</asp:ListItem>
            <asp:ListItem>Antarctica</asp:ListItem>
            <asp:ListItem>Antigua And Barbuda</asp:ListItem>
            <asp:ListItem>Argentina</asp:ListItem>
            <asp:ListItem>Armenia</asp:ListItem>
            <asp:ListItem>Aruba</asp:ListItem>
            <asp:ListItem>Australia</asp:ListItem>
            <asp:ListItem>Austria</asp:ListItem>
            <asp:ListItem>Azerbaijan</asp:ListItem>
            <asp:ListItem>Bahamas</asp:ListItem>
            <asp:ListItem>Bahrain</asp:ListItem>
            <asp:ListItem>Bangladesh</asp:ListItem>
            <asp:ListItem>Barbados</asp:ListItem>
            <asp:ListItem>Belarus</asp:ListItem>
            <asp:ListItem>Belgium</asp:ListItem>
            <asp:ListItem>Belize</asp:ListItem>
            <asp:ListItem>Benin</asp:ListItem>
            <asp:ListItem>Bermuda</asp:ListItem>
            <asp:ListItem>Bhutan</asp:ListItem>
            <asp:ListItem>Bolivia</asp:ListItem>
            <asp:ListItem>Bosnia And Herzegowina</asp:ListItem>
            <asp:ListItem>Botswana</asp:ListItem>
            <asp:ListItem>Bouvet Island</asp:ListItem>
            <asp:ListItem>Brazil</asp:ListItem>
            <asp:ListItem>British Indian Ocean Territory</asp:ListItem>
            <asp:ListItem>Brunei Darussalam</asp:ListItem>
            <asp:ListItem>Bulgaria</asp:ListItem>
            <asp:ListItem>Burkina Faso</asp:ListItem>
            <asp:ListItem>Burundi</asp:ListItem>
            <asp:ListItem>Cambodia</asp:ListItem>
            <asp:ListItem>Cameroon</asp:ListItem>
            <asp:ListItem>Canada</asp:ListItem>
            <asp:ListItem>Cape Verde</asp:ListItem>
            <asp:ListItem>Cayman Islands</asp:ListItem>
            <asp:ListItem>Central African Republic</asp:ListItem>
            <asp:ListItem>Chad</asp:ListItem>
            <asp:ListItem>Chile</asp:ListItem>
            <asp:ListItem>China</asp:ListItem>
            <asp:ListItem>Christmas Island</asp:ListItem>
            <asp:ListItem>Cocos (Keeling) Islands</asp:ListItem>
            <asp:ListItem>Colombia</asp:ListItem>
            <asp:ListItem>Comoros</asp:ListItem>
            <asp:ListItem>Congo</asp:ListItem>
            <asp:ListItem>Cook Islands</asp:ListItem>
            <asp:ListItem>Costa Rica</asp:ListItem>
            <asp:ListItem>Cote D'Ivoire</asp:ListItem>
            <asp:ListItem>Croatia (Local Name: Hrvatska)</asp:ListItem>
            <asp:ListItem>Cuba</asp:ListItem>
            <asp:ListItem>Cyprus</asp:ListItem>
            <asp:ListItem>Czech Republic</asp:ListItem>
            <asp:ListItem>Denmark</asp:ListItem>
            <asp:ListItem>Djibouti</asp:ListItem>
            <asp:ListItem>Dominica</asp:ListItem>
            <asp:ListItem>Dominican Republic</asp:ListItem>
            <asp:ListItem>East Timor</asp:ListItem>
            <asp:ListItem>Ecuador</asp:ListItem>
            <asp:ListItem>Egypt</asp:ListItem>
            <asp:ListItem>El Salvador</asp:ListItem>
            <asp:ListItem>Equatorial Guinea</asp:ListItem>
            <asp:ListItem>Eritrea</asp:ListItem>
            <asp:ListItem>Estonia</asp:ListItem>
            <asp:ListItem>Ethiopia</asp:ListItem>
            <asp:ListItem>Falkland Islands (Malvinas)</asp:ListItem>
            <asp:ListItem>Faroe Islands</asp:ListItem>
            <asp:ListItem>Fiji</asp:ListItem>
            <asp:ListItem>Finland</asp:ListItem>
            <asp:ListItem>France</asp:ListItem>
            <asp:ListItem>French Guiana</asp:ListItem>
            <asp:ListItem>French Polynesia</asp:ListItem>
            <asp:ListItem>French Southern Territories</asp:ListItem>
            <asp:ListItem>Gabon</asp:ListItem>
            <asp:ListItem>Gambia</asp:ListItem>
            <asp:ListItem>Georgia</asp:ListItem>
            <asp:ListItem>Germany</asp:ListItem>
            <asp:ListItem>Ghana</asp:ListItem>
            <asp:ListItem>Gibraltar</asp:ListItem>
            <asp:ListItem>Greece</asp:ListItem>
            <asp:ListItem>Greenland</asp:ListItem>
            <asp:ListItem>Grenada</asp:ListItem>
            <asp:ListItem>Guadeloupe</asp:ListItem>
            <asp:ListItem>Guam</asp:ListItem>
            <asp:ListItem>Guatemala</asp:ListItem>
            <asp:ListItem>Guinea</asp:ListItem>
            <asp:ListItem>Guinea-Bissau</asp:ListItem>
            <asp:ListItem>Guyana</asp:ListItem>
            <asp:ListItem>Haiti</asp:ListItem>
            <asp:ListItem>Honduras</asp:ListItem>
            <asp:ListItem>Hong Kong</asp:ListItem>
            <asp:ListItem>Hungary</asp:ListItem>
            <asp:ListItem>Icel And</asp:ListItem>
            <asp:ListItem>India</asp:ListItem>
            <asp:ListItem>Indonesia</asp:ListItem>
            <asp:ListItem>Iran (Islamic Republic Of)</asp:ListItem>
            <asp:ListItem>Iraq</asp:ListItem>
            <asp:ListItem>Ireland</asp:ListItem>
            <asp:ListItem>Israel</asp:ListItem>
            <asp:ListItem>Italy</asp:ListItem>
            <asp:ListItem>Jamaica</asp:ListItem>
            <asp:ListItem>Japan</asp:ListItem>
            <asp:ListItem>Jordan</asp:ListItem>
            <asp:ListItem>Kazakhstan</asp:ListItem>
            <asp:ListItem>Kenya</asp:ListItem>
            <asp:ListItem>Kiribati</asp:ListItem>
            <asp:ListItem>Korea</asp:ListItem>
            <asp:ListItem>Kuwait</asp:ListItem>
            <asp:ListItem>Kyrgyzstan</asp:ListItem>
            <asp:ListItem>Lao People'S Dem Republic</asp:ListItem>
            <asp:ListItem>Latvia</asp:ListItem>
            <asp:ListItem>Lebanon</asp:ListItem>
            <asp:ListItem>Lesotho</asp:ListItem>
            <asp:ListItem>Liberia</asp:ListItem>
            <asp:ListItem>Libyan Arab Jamahiriya</asp:ListItem>
            <asp:ListItem>Liechtenstein</asp:ListItem>
            <asp:ListItem>Lithuania</asp:ListItem>
            <asp:ListItem>Luxembourg</asp:ListItem>
            <asp:ListItem>Macau</asp:ListItem>
            <asp:ListItem>Macedonia</asp:ListItem>
            <asp:ListItem>Madagascar</asp:ListItem>
            <asp:ListItem>Malawi</asp:ListItem>
            <asp:ListItem>Malaysia</asp:ListItem>
            <asp:ListItem>Maldives</asp:ListItem>
            <asp:ListItem>Mali</asp:ListItem>
            <asp:ListItem>Malta</asp:ListItem>
            <asp:ListItem>Marshall Islands</asp:ListItem>
            <asp:ListItem>Martinique</asp:ListItem>
            <asp:ListItem>Mauritania</asp:ListItem>
            <asp:ListItem>Mauritius</asp:ListItem>
            <asp:ListItem>Mayotte</asp:ListItem>
            <asp:ListItem>Mexico</asp:ListItem>
            <asp:ListItem>Micronesia, Federated States</asp:ListItem>
            <asp:ListItem>Moldova, Republic Of</asp:ListItem>
            <asp:ListItem>Monaco</asp:ListItem>
            <asp:ListItem>Mongolia</asp:ListItem>
            <asp:ListItem>Montserrat</asp:ListItem>
            <asp:ListItem>Morocco</asp:ListItem>
            <asp:ListItem>Mozambique</asp:ListItem>
            <asp:ListItem>Myanmar</asp:ListItem>
            <asp:ListItem>Namibia</asp:ListItem>
            <asp:ListItem>Nauru</asp:ListItem>
            <asp:ListItem>Nepal</asp:ListItem>
            <asp:ListItem>Netherlands</asp:ListItem>
            <asp:ListItem>Netherlands Ant Illes</asp:ListItem>
            <asp:ListItem>New Caledonia</asp:ListItem>
            <asp:ListItem>New Zealand</asp:ListItem>
            <asp:ListItem>Nicaragua</asp:ListItem>
            <asp:ListItem>Niger</asp:ListItem>
            <asp:ListItem>Nigeria</asp:ListItem>
            <asp:ListItem>Niue</asp:ListItem>
            <asp:ListItem>Norfolk Island</asp:ListItem>
            <asp:ListItem>Northern Mariana Islands</asp:ListItem>
            <asp:ListItem>Norway</asp:ListItem>
            <asp:ListItem>Oman</asp:ListItem>
            <asp:ListItem>Pakistan</asp:ListItem>
            <asp:ListItem>Palau</asp:ListItem>
            <asp:ListItem>Panama</asp:ListItem>
            <asp:ListItem>Papua New Guinea</asp:ListItem>
            <asp:ListItem>Paraguay</asp:ListItem>
            <asp:ListItem>Peru</asp:ListItem>
            <asp:ListItem>Philippines</asp:ListItem>
            <asp:ListItem>Pitcairn</asp:ListItem>
            <asp:ListItem>Poland</asp:ListItem>
            <asp:ListItem>Portugal</asp:ListItem>
            <asp:ListItem>Puerto Rico</asp:ListItem>
            <asp:ListItem>Qatar</asp:ListItem>
            <asp:ListItem>Reunion</asp:ListItem>
            <asp:ListItem>Romania</asp:ListItem>
            <asp:ListItem>Russian Federation</asp:ListItem>
            <asp:ListItem>Rwanda</asp:ListItem>
            <asp:ListItem>Saint K Itts And Nevis</asp:ListItem>
            <asp:ListItem>Saint Lucia</asp:ListItem>
            <asp:ListItem>Saint Vincent, The Grenadines</asp:ListItem>
            <asp:ListItem>Samoa</asp:ListItem>
            <asp:ListItem>San Marino</asp:ListItem>
            <asp:ListItem>Sao Tome And Principe</asp:ListItem>
            <asp:ListItem>Saudi Arabia</asp:ListItem>
            <asp:ListItem>Senegal</asp:ListItem>
            <asp:ListItem>Seychelles</asp:ListItem>
            <asp:ListItem>Sierra Leone</asp:ListItem>
            <asp:ListItem>Singapore</asp:ListItem>
            <asp:ListItem>Slovakia (Slovak Republic)</asp:ListItem>
            <asp:ListItem>Slovenia</asp:ListItem>
            <asp:ListItem>Solomon Islands</asp:ListItem>
            <asp:ListItem>Somalia</asp:ListItem>
            <asp:ListItem>South Africa</asp:ListItem>
            <asp:ListItem>South Georgia , S Sandwich Is.</asp:ListItem>
            <asp:ListItem>Spain</asp:ListItem>
            <asp:ListItem>Sri Lanka</asp:ListItem>
            <asp:ListItem>St. Helena</asp:ListItem>
            <asp:ListItem>St. Pierre And Miquelon</asp:ListItem>
            <asp:ListItem>Sudan</asp:ListItem>
            <asp:ListItem>Suriname</asp:ListItem>
            <asp:ListItem>Svalbard, Jan Mayen Islands</asp:ListItem>
            <asp:ListItem>Sw Aziland</asp:ListItem>
            <asp:ListItem>Sweden</asp:ListItem>
            <asp:ListItem>Switzerland</asp:ListItem>
            <asp:ListItem>Syrian Arab Republic</asp:ListItem>
            <asp:ListItem>Taiwan</asp:ListItem>
            <asp:ListItem>Tajikistan</asp:ListItem>
            <asp:ListItem>Tanzania, United Republic Of</asp:ListItem>
            <asp:ListItem>Thailand</asp:ListItem>
            <asp:ListItem>Togo</asp:ListItem>
            <asp:ListItem>Tokelau</asp:ListItem>
            <asp:ListItem>Tonga</asp:ListItem>
            <asp:ListItem>Trinidad And Tobago</asp:ListItem>
            <asp:ListItem>Tunisia</asp:ListItem>
            <asp:ListItem>Turkey</asp:ListItem>
            <asp:ListItem>Turkmenistan</asp:ListItem>
            <asp:ListItem>Turks And Caicos Islands</asp:ListItem>
            <asp:ListItem>Tuvalu</asp:ListItem>
            <asp:ListItem>Uganda</asp:ListItem>
            <asp:ListItem>Ukraine</asp:ListItem>
            <asp:ListItem>United Arab Emirates</asp:ListItem>
            <asp:ListItem>United Kingdom</asp:ListItem>
            <asp:ListItem>United States</asp:ListItem>
            <asp:ListItem>United States Minor Is.</asp:ListItem>
            <asp:ListItem>Uruguay</asp:ListItem>
            <asp:ListItem>Uzbekistan</asp:ListItem>
            <asp:ListItem>Vanuatu</asp:ListItem>
            <asp:ListItem>Venezuela</asp:ListItem>
            <asp:ListItem>Viet Nam</asp:ListItem>
            <asp:ListItem>Virgin Islands (British)</asp:ListItem>
            <asp:ListItem>Virgin Islands (U.S.)</asp:ListItem>
            <asp:ListItem>Wallis And Futuna Islands</asp:ListItem>
            <asp:ListItem>Western Sahara</asp:ListItem>
            <asp:ListItem>Yemen</asp:ListItem>
            <asp:ListItem>Yugoslavia</asp:ListItem>
            <asp:ListItem>Zaire</asp:ListItem>
            <asp:ListItem>Zambia</asp:ListItem>
            <asp:ListItem>Zimbabwe</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:TextBox ID="txtrua" placeholder="Rua" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtcidade" placeholder="Cidade" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtdistrito" placeholder="Distrito" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtcp1" placeholder="Codigo postal" CssClass="gimmyspace" runat="server" MaxLength="4" Width="100%"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtcont" placeholder="Contribuinte" CssClass="gimmyspace" runat="server" MaxLength="9" Width="100%"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtdinheiro" placeholder="Dinheiro" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
        <br />
        <asp:Label ID="Label11" runat="server" Text="Imagem"></asp:Label>
        <br />
        <asp:FileUpload ID="iuser" style="" Width="100%" runat="server" />
        <br />
        <asp:Button ID="userregister" CssClass="adminbutton" runat="server" Text="Adicionar" OnClick="userregister_Click" />


    </div>

         <%--<div class="tableuse">
        <asp:Label ID="Label12" runat="server" Font-Size="Larger" CssClass="colortitle" Text="Adicionar Utilizadores"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label14" runat="server" Text="Nome"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox3" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
        <br />
        <asp:Label ID="Label15" runat="server" Text="Marca"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox4" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
        <br />
        <asp:Label ID="Label16" runat="server" Text="País"></asp:Label>
        <br />
        <asp:DropDownList CssClass="gimmyspace" ID="DropDownList1" Width="100%" runat="server">
            <asp:ListItem Selected="true"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label17" runat="server" Text="Rua"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox5" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
        <br />
        <asp:Label ID="Label18" runat="server" Text="Cidade"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox6" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
        <br />
        <asp:Label ID="Label19" runat="server" Text="Distrito"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox7" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
        <br />
        <asp:Label ID="Label20" runat="server" Text="CodigoPostal"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox8" CssClass="gimmyspace" runat="server" MaxLength="4" Width="42px"></asp:TextBox>
        -
        <asp:TextBox ID="TextBox9" runat="server" MaxLength="3" Width="34px"></asp:TextBox>
        <br />
        <asp:Label ID="Label21" runat="server" Text="Contribuinte"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox10" CssClass="gimmyspace" runat="server" MaxLength="9" Width="100%"></asp:TextBox>
        <br />
        <asp:Label ID="Label22" runat="server" Text="Dinheiro"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox11" CssClass="gimmyspace" runat="server" Width="100%"></asp:TextBox>
        <br />
        <asp:Label ID="Label23" runat="server" Text="Imagem"></asp:Label>
        <br />
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <asp:Button ID="Button1" CssClass="adminbutton" runat="server" Text="Adicionar" OnClick="userregister_Click" />


    </div>--%>

    <%--<div class="form">

        <div class="tab-content">
            <div id="signup">
                <h1>Registar Utilizador</h1>

                <form action="/" method="post">

                    <div class="top-row">
                        <div class="field-wrap">
                            <label>
                                Primeiro Nome<span class="req"></span>
                            </label>
                            <input type="text" required autocomplete="off" />
                        </div>

                        <div class="field-wrap">
                            <label>
                                Ultimo Nome<span class="req"></span>
                            </label>
                            <input type="text" required autocomplete="off" />
                        </div>
                    </div>

                    <div class="field-wrap">
                        <label>
                            Email<span class="req"></span>
                        </label>
                        <input type="email" required autocomplete="off" />
                    </div>

                    <div class="field-wrap">
                        <label>
                            Senha<span class="req"></span>
                        </label>
                        <input type="text" required autocomplete="off" />
                    </div>

                    <div class="field-wrap">
                        <asp:DropDownList ID="Paises" runat="server">
                            <asp:ListItem>Afghanestan</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="field-wrap">
                        <label>
                            Rua<span class="req"></span>
                        </label>
                        <input type="text" required autocomplete="off" />
                    </div>

                    <div class="field-wrap">
                        <label>
                            Cidade<span class="req"></span>
                        </label>
                        <input type="text" required autocomplete="off" />
                    </div>

                    <div class="field-wrap">
                        <label>
                            Codigo Postal<span class="req"></span>
                        </label>
                        <input type="text" required autocomplete="off" />
                    </div>

                    <div class="field-wrap">
                        <label>
                            Contribuinte<span class="req"></span>
                        </label>
                        <input type="text" required autocomplete="off" />
                    </div>

                    <div class="field-wrap">
                        <label>
                            Dinheiro<span class="req"></span>
                        </label>
                        <input type="text" required autocomplete="off" />
                    </div>

                    <button type="submit" class="button button-block" />
                    Registar</button>
          
         
                </form>

            </div>
            <div>
            </div>

        </div>--%>
    <!-- tab-content -->

    <%--</div>--%>



    <%--<div class="actionadmin">

        <asp:Label ID="Autilizadores0" runat="server" Font-Size="Larger" Text="Editar Utilizadores"></asp:Label>
        <br />

    </div>--%>

    <div class="table" style="width:100%">

        <asp:ListView style="width:100%" ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <tr style="background-color: #FFFFFF; color: #284775;">
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PalavraPasseLabel" runat="server" Text='<%# Eval("PalavraPasse") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DinheiroLabel" runat="server" Text='<%# Eval("Dinheiro") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PaisLabel" runat="server" Text='<%# Eval("Pais") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RuaLabel" runat="server" Text='<%# Eval("Rua") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CidadeLabel" runat="server" Text='<%# Eval("Cidade") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DistritoLabel" runat="server" Text='<%# Eval("Distrito") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CodigoPostalLabel" runat="server" Text='<%# Eval("CodigoPostal") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ContribuinteLabel" runat="server" Text='<%# Eval("Contribuinte") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ImagemLabel" runat="server" Text='<%# Eval("Imagem") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #999999;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PalavraPasseTextBox" runat="server" Text='<%# Bind("PalavraPasse") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DinheiroTextBox" runat="server" Text='<%# Bind("Dinheiro") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PaisTextBox" runat="server" Text='<%# Bind("Pais") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="RuaTextBox" runat="server" Text='<%# Bind("Rua") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CidadeTextBox" runat="server" Text='<%# Bind("Cidade") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DistritoTextBox" runat="server" Text='<%# Bind("Distrito") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CodigoPostalTextBox" runat="server" Text='<%# Bind("CodigoPostal") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ContribuinteTextBox" runat="server" Text='<%# Bind("Contribuinte") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ImagemTextBox" runat="server" Text='<%# Bind("Imagem") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PalavraPasseTextBox" runat="server" Text='<%# Bind("PalavraPasse") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DinheiroTextBox" runat="server" Text='<%# Bind("Dinheiro") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PaisTextBox" runat="server" Text='<%# Bind("Pais") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="RuaTextBox" runat="server" Text='<%# Bind("Rua") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CidadeTextBox" runat="server" Text='<%# Bind("Cidade") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DistritoTextBox" runat="server" Text='<%# Bind("Distrito") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CodigoPostalTextBox" runat="server" Text='<%# Bind("CodigoPostal") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ContribuinteTextBox" runat="server" Text='<%# Bind("Contribuinte") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ImagemTextBox" runat="server" Text='<%# Bind("Imagem") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #E0FFFF; color: #333333;">
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PalavraPasseLabel" runat="server" Text='<%# Eval("PalavraPasse") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DinheiroLabel" runat="server" Text='<%# Eval("Dinheiro") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PaisLabel" runat="server" Text='<%# Eval("Pais") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RuaLabel" runat="server" Text='<%# Eval("Rua") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CidadeLabel" runat="server" Text='<%# Eval("Cidade") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DistritoLabel" runat="server" Text='<%# Eval("Distrito") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CodigoPostalLabel" runat="server" Text='<%# Eval("CodigoPostal") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ContribuinteLabel" runat="server" Text='<%# Eval("Contribuinte") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ImagemLabel" runat="server" Text='<%# Eval("Imagem") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #E0FFFF; color: #333333;">
                                    <th runat="server">Id</th>
                                    <th runat="server">Nome</th>
                                    <th runat="server">PalavraPasse</th>
                                    <th runat="server">Dinheiro</th>
                                    <th runat="server">Email</th>
                                    <th runat="server">Pais</th>
                                    <th runat="server">Rua</th>
                                    <th runat="server">Cidade</th>
                                    <th runat="server">Distrito</th>
                                    <th runat="server">CodigoPostal</th>
                                    <th runat="server">Contribuinte</th>
                                    <th runat="server">Imagem</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF;">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #E2DED6; font-weight: bold; color: #333333;">
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PalavraPasseLabel" runat="server" Text='<%# Eval("PalavraPasse") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DinheiroLabel" runat="server" Text='<%# Eval("Dinheiro") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PaisLabel" runat="server" Text='<%# Eval("Pais") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RuaLabel" runat="server" Text='<%# Eval("Rua") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CidadeLabel" runat="server" Text='<%# Eval("Cidade") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DistritoLabel" runat="server" Text='<%# Eval("Distrito") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CodigoPostalLabel" runat="server" Text='<%# Eval("CodigoPostal") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ContribuinteLabel" runat="server" Text='<%# Eval("Contribuinte") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ImagemLabel" runat="server" Text='<%# Eval("Imagem") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CARP %>" DeleteCommand="DELETE FROM [Utilizadores] WHERE [Id] = @original_Id AND [Nome] = @original_Nome AND [PalavraPasse] = @original_PalavraPasse AND [Dinheiro] = @original_Dinheiro AND [Email] = @original_Email AND [Pais] = @original_Pais AND (([Rua] = @original_Rua) OR ([Rua] IS NULL AND @original_Rua IS NULL)) AND (([Cidade] = @original_Cidade) OR ([Cidade] IS NULL AND @original_Cidade IS NULL)) AND (([Distrito] = @original_Distrito) OR ([Distrito] IS NULL AND @original_Distrito IS NULL)) AND (([CodigoPostal] = @original_CodigoPostal) OR ([CodigoPostal] IS NULL AND @original_CodigoPostal IS NULL)) AND (([Contribuinte] = @original_Contribuinte) OR ([Contribuinte] IS NULL AND @original_Contribuinte IS NULL))" InsertCommand="INSERT INTO [Utilizadores] ([Nome], [PalavraPasse], [Dinheiro], [Email], [Pais], [Rua], [Cidade], [Distrito], [CodigoPostal], [Contribuinte]) VALUES (@Nome, @PalavraPasse, @Dinheiro, @Email, @Pais, @Rua, @Cidade, @Distrito, @CodigoPostal, @Contribuinte)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Utilizadores]" UpdateCommand="UPDATE [Utilizadores] SET [Nome] = @Nome, [PalavraPasse] = @PalavraPasse, [Dinheiro] = @Dinheiro, [Email] = @Email, [Pais] = @Pais, [Rua] = @Rua, [Cidade] = @Cidade, [Distrito] = @Distrito, [CodigoPostal] = @CodigoPostal, [Contribuinte] = @Contribuinte WHERE [Id] = @original_Id AND [Nome] = @original_Nome AND [PalavraPasse] = @original_PalavraPasse AND [Dinheiro] = @original_Dinheiro AND [Email] = @original_Email AND [Pais] = @original_Pais AND (([Rua] = @original_Rua) OR ([Rua] IS NULL AND @original_Rua IS NULL)) AND (([Cidade] = @original_Cidade) OR ([Cidade] IS NULL AND @original_Cidade IS NULL)) AND (([Distrito] = @original_Distrito) OR ([Distrito] IS NULL AND @original_Distrito IS NULL)) AND (([CodigoPostal] = @original_CodigoPostal) OR ([CodigoPostal] IS NULL AND @original_CodigoPostal IS NULL)) AND (([Contribuinte] = @original_Contribuinte) OR ([Contribuinte] IS NULL AND @original_Contribuinte IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Nome" Type="String" />
                <asp:Parameter Name="original_PalavraPasse" Type="String" />
                <asp:Parameter Name="original_Dinheiro" Type="Decimal" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Pais" Type="String" />
                <asp:Parameter Name="original_Rua" Type="String" />
                <asp:Parameter Name="original_Cidade" Type="String" />
                <asp:Parameter Name="original_Distrito" Type="String" />
                <asp:Parameter Name="original_CodigoPostal" Type="Int32" />
                <asp:Parameter Name="original_Contribuinte" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Nome" Type="String" />
                <asp:Parameter Name="PalavraPasse" Type="String" />
                <asp:Parameter Name="Dinheiro" Type="Decimal" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Pais" Type="String" />
                <asp:Parameter Name="Rua" Type="String" />
                <asp:Parameter Name="Cidade" Type="String" />
                <asp:Parameter Name="Distrito" Type="String" />
                <asp:Parameter Name="CodigoPostal" Type="Int32" />
                <asp:Parameter Name="Contribuinte" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nome" Type="String" />
                <asp:Parameter Name="PalavraPasse" Type="String" />
                <asp:Parameter Name="Dinheiro" Type="Decimal" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Pais" Type="String" />
                <asp:Parameter Name="Rua" Type="String" />
                <asp:Parameter Name="Cidade" Type="String" />
                <asp:Parameter Name="Distrito" Type="String" />
                <asp:Parameter Name="CodigoPostal" Type="Int32" />
                <asp:Parameter Name="Contribuinte" Type="Decimal" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Nome" Type="String" />
                <asp:Parameter Name="original_PalavraPasse" Type="String" />
                <asp:Parameter Name="original_Dinheiro" Type="Decimal" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Pais" Type="String" />
                <asp:Parameter Name="original_Rua" Type="String" />
                <asp:Parameter Name="original_Cidade" Type="String" />
                <asp:Parameter Name="original_Distrito" Type="String" />
                <asp:Parameter Name="original_CodigoPostal" Type="Int32" />
                <asp:Parameter Name="original_Contribuinte" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
  <%--  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>--%>

 <%--   <script src="js/index.js"></script>--%>

</form>
</asp:Content>
