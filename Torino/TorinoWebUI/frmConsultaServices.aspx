<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmConsultaServices.aspx.cs" Inherits="TorinoWebUI.frmConsultaService" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 268px;
        }
    </style>

    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <asp:Panel ID="panel" runat="server" GroupingText="::Pesquisar" Width="900px">
            <table>
                <tr>
                    <td colspan="4">
                        <asp:TextBox ID="txtPesquisar" runat="server" align="left" Width="313px" placeholder="Digite aqui o que deseja pesquisar..."></asp:TextBox>
                        <asp:Label ID="lblErroConsultar" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><br /></td>
                </tr>            
                <tr>
                    <td>
                        <asp:CheckBox ID="cbFiltrar" runat="server" Text="Filtrar por data" Width="230px" AutoPostBack="True" CausesValidation="True" EnableViewState="False" OnCheckedChanged="Page_Load" />
                    </td>
                    <td colspan="2" Width="230px">
                        <asp:Label runat="server" id="lblIni">Início: </asp:Label> 
                        <br />
                        <asp:TextBox ID="txtIni" Runat="server" Width="153px"></asp:TextBox>
                        <asp:Button ID="btnIni" Runat="server" Text="..." OnClick="btnIni_Click"></asp:Button>
                        <br />
                        <asp:calendar id="cdrCalendar" runat="server" backcolor="White" width="200px" height="180px" font-size="8pt" font-names="Verdana" bordercolor="#999999" daynameformat="Shortest" Visible="False" CellPadding="4" ForeColor="Black" OnSelectionChanged="Page_Load" SelectedDate="01/05/2021 13:54:48" VisibleDate="2021-01-05">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:calendar>
                    </td>
                     <td colspan="2" class="auto-style1">
                        <asp:Label runat="server" id="lblTer">Término: </asp:Label> 
                         <br />
                         <asp:TextBox ID="txtTer" Runat="server" Width="153px"></asp:TextBox>
                         <asp:Button ID="btnTer" Runat="server" OnClick="btnTer_Click" Text="..." />
                        <br />
                         <asp:Calendar ID="cdrCalendar0" runat="server" backcolor="White" bordercolor="#999999" CellPadding="4" daynameformat="Shortest" font-names="Verdana" font-size="8pt" ForeColor="Black" height="180px" OnSelectionChanged="Page_Load" Visible="False" width="200px" SelectedDate="01/05/2021 13:54:21" VisibleDate="2021-01-05">
                             <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                             <NextPrevStyle VerticalAlign="Bottom" />
                             <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                             <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                             <SelectorStyle BackColor="#CCCCCC" />
                             <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                             <OtherMonthDayStyle ForeColor="#808080" />
                             <WeekendDayStyle BackColor="#FFFFCC" />
                         </asp:Calendar>
                    </td>
                </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Pesquisar" Width="120px" OnClick="Button1_Click" /><br /><br />
                        </td>
                    </tr>                    
            </table>
    </asp:Panel>
    <asp:Panel ID="panel1" runat="server" GroupingText="::Inserir" Width="900px">
        <table>
            <tr>
                <td>Cliente</td>
                <td>Modelo</td>
                <td>Part-Number</td>
                <td>Serial-Number</td>
                <td>Asset-Tag</td>
                <td>Mac-Address</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="74px"></asp:TextBox>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="113px"></asp:TextBox>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="114px"></asp:TextBox>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="112px"></asp:TextBox>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Width="94px"></asp:TextBox>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Width="145px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><br /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button2" runat="server" Text="Inserir" Width="120px" />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="panel12" runat="server" GroupingText="::Resultado" Width="900px">                
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="695px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField HeaderText="Cliente" />
                <asp:BoundField HeaderText="Modelo" />
                <asp:BoundField HeaderText="Part-Number" />
                <asp:BoundField HeaderText="Serial-Number" />
                <asp:BoundField HeaderText="Asset-Tag" />
                <asp:BoundField HeaderText="Mac-Address" />
                <asp:TemplateField HeaderText="Editar">
                    <ItemTemplate>
                        <asp:ImageButton ID="ibtnEditar" runat="server" Height="25px" ImageUrl="~/Imagens/edit.png" CommandName="Editar" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Deletar">
                    <ItemTemplate>
                        <asp:ImageButton ID="ibtnEditar" runat="server" Height="25px" ImageUrl="~/Imagens/delete.png" CommandName="Editar" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:Button ID="Button3" runat="server" Text="Exportar" Width="120px"  />
    </asp:Panel>
    <br />
    </div>
</asp:Content>
