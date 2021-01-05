<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmServices.aspx.cs" Inherits="TorinoWebUI.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <asp:Panel ID="Panel1" runat="server" GroupingText="::Insira detalhes do cliente" Width="500px">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Nome do cliente" /><br />
                        <asp:DropDownList ID="DropDownList32" Width="200" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Modelo Equipamento" /><br />
                        <asp:DropDownList ID="DropDownList22" Width="200" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="PN Equipamento" /><br />
                        <asp:TextBox ID="TextBox2" runat="server" Width="200" placeholder="Ex. SH23RAL#AC4"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Quantidade" /><br />
                        <asp:TextBox ID="TextBox8" runat="server" Width="200"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    <br />
    <div align="center">
        <asp:Panel ID="Panel2" runat="server" GroupingText="::Insira detalhes do serviço" Width="500px">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Escolha a instância" /><br />
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Value="boot1">Primeiro Boot</asp:ListItem>
                            <asp:ListItem Value="boot2">Segundo Boot</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Label ID="Label6" runat="server" Text="Possuí serviço de imagem?" /><br />
                            <asp:RadioButtonList ID="RadioButtonList5" runat="server">
                                <asp:ListItem>Sim</asp:ListItem>
                                <asp:ListItem>Não</asp:ListItem>
                            </asp:RadioButtonList>
                        <asp:Button ID="BtnBuscarImg" runat="server" Text="Buscar" Enabled="False" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Label ID="Label7" runat="server" Text="Possuí alteração no logo de BIOS?" /><br />
                            <asp:RadioButtonList ID="RadioButtonList11" runat="server">
                                <asp:ListItem>Sim</asp:ListItem>
                                <asp:ListItem>Não</asp:ListItem>
                            </asp:RadioButtonList>
                        <asp:Button ID="BtnBuscarLogo" runat="server" Text="Buscar" Enabled="False" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Label ID="Label8" runat="server" Text="Deseja utilizar máscara para o Asset Tag?" /><br />
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                <asp:ListItem>Sim</asp:ListItem>
                                <asp:ListItem>Não</asp:ListItem>
                            </asp:RadioButtonList>
                        <asp:TextBox ID="txtAsset" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Label ID="Label9" runat="server" Text="Possuí inserção de senha para acesso ao BIOS?" /><br />
                            <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                                <asp:ListItem>Sim</asp:ListItem>
                                <asp:ListItem>Não</asp:ListItem>
                            </asp:RadioButtonList>
                        <asp:TextBox ID="txtMascara" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Label ID="Label10" runat="server" Text="Possuí atualização de BIOS?" />
                            <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                                <asp:ListItem>Sim</asp:ListItem>
                                <asp:ListItem>Não</asp:ListItem>
                            </asp:RadioButtonList>
                        <asp:Button ID="BtnBuscarAtt" runat="server" Text="Buscar" Enabled="False" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Label ID="Label11" runat="server" Text="Possuí alteração na configuração de BIOS?" /><br />
                            <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                                <asp:ListItem>Sim</asp:ListItem>
                                <asp:ListItem>Não</asp:ListItem>
                            </asp:RadioButtonList>
                        <asp:Button ID="BtnSetBios" runat="server" Text="Buscar" Enabled="False" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <asp:Button ID="BtbProximo" runat="server" Width="200px" Text="Criar" />
        <br />
        <br />
    </div>
</asp:Content>
  