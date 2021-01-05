<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmAdicionarUser.aspx.cs" Inherits="TorinoWebUI.frmAdicionarUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <h2>:: Cadastro de Usuário</h2>
    <table>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>Nome:</td>
            <td>
                <asp:TextBox ID="txtDsLogin" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Senha:</td>
            <td>
                <asp:TextBox ID="txtDsSenha" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">
        <asp:Button ID="btnInserir0" runat="server" OnClick="btnInserir_Click" Text="Inserir" Width="125px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>

    </table>
    <p>
        &nbsp;</p>
<p>
    <asp:Label ID="lblMensagem" runat="server"></asp:Label>       
    </center>
</asp:Content>