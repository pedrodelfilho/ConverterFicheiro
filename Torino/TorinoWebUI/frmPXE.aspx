<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmPXE.aspx.cs" Inherits="TorinoWebUI.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            font-size: medium;
        }
        .auto-style3 {
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <asp:Panel ID="Panel1" runat="server" GroupingText="::Boot PXE" width="700px">
            <br />
            <table>
                <asp:Panel ID="Panel2" runat="server" GroupingText="Torino PE" width="400px">
                    <tr>
                        <td class="auto-style2">Status</td>
                        <td class="auto-style2">Prioridade</td>
                    </tr>
                    <tr>
                        <td width="200px">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="auto-style3">
                                <asp:ListItem>Habilitar</asp:ListItem>
                                <asp:ListItem>Desabilitar</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td>
                            <strong>
                            <asp:RadioButtonList ID="RadioButtonList2" runat="server" CssClass="auto-style3">
                                <asp:ListItem> 1º</asp:ListItem>
                                <asp:ListItem> 2º</asp:ListItem>
                                <asp:ListItem> 3º</asp:ListItem>
                            </asp:RadioButtonList>
                            </strong>
                        </td>
                    </tr>
                </asp:Panel>
            </table>
            <br />
            <table>
                <asp:Panel ID="Panel3" runat="server" GroupingText="Primeiro Boot" width="400px">
                    <tr>
                        <td class="auto-style2">Status</td>
                        <td class="auto-style2">Prioridade</td>
                    </tr>
                    <tr>
                        <td width="200px">
                            <asp:RadioButtonList ID="RadioButtonList3" runat="server" CssClass="auto-style3">
                                <asp:ListItem>Habilitar</asp:ListItem>
                                <asp:ListItem>Desabilitar</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td><strong>
                            <asp:RadioButtonList ID="RadioButtonList4" runat="server" CssClass="auto-style3">
                                <asp:ListItem> 1º</asp:ListItem>
                                <asp:ListItem> 2º</asp:ListItem>
                                <asp:ListItem> 3º</asp:ListItem>
                            </asp:RadioButtonList>
                            </strong></td>
                    </tr>
                </asp:Panel>
            </table>
            <br />
            <table>
                <asp:Panel ID="Panel4" runat="server" GroupingText="Segundo Boot" width="400px">
                    <tr>
                        <td class="auto-style2">Status</td>
                        <td class="auto-style2">Prioridade</td>
                    </tr>
                    <tr>
                        <td width="200px">
                            <asp:RadioButtonList ID="RadioButtonList5" runat="server" CssClass="auto-style3">
                                <asp:ListItem>Habilitar</asp:ListItem>
                                <asp:ListItem>Desabilitar</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td><strong>
                            <asp:RadioButtonList ID="RadioButtonList6" runat="server" CssClass="auto-style3">
                                <asp:ListItem>1º</asp:ListItem>
                                <asp:ListItem>2º</asp:ListItem>
                                <asp:ListItem>3º</asp:ListItem>
                            </asp:RadioButtonList>
                            </strong>
                        </td>
                    </tr>
                </asp:Panel>
            </table>
            <table>
                <caption>
                    <br />
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Salvar" Width="120px" />
                        </td>
                    </tr>
                </caption>
                </tr>
                <tr>
                    <td><br /></td>
                </tr>
            </table>
        </asp:Panel>
    </div>
</asp:Content>
