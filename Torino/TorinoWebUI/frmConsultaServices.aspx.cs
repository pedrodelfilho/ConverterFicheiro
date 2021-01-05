using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TorinoWebUI
{
    public partial class frmConsultaService : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtIni.Text = cdrCalendar.SelectedDate.ToString("dd/MM/yyyy");
            txtTer.Text = cdrCalendar0.SelectedDate.ToString("dd/MM/yyyy");
            cdrCalendar.Visible = false;
            cdrCalendar0.Visible = false;
            if (cbFiltrar.Checked)
            {
                lblIni.Visible = true;
                lblTer.Visible = true;
                txtIni.Visible = true;
                btnIni.Visible = true;
                txtTer.Visible = true;
                btnTer.Visible = true;
            }
            else
            {
                txtIni.Visible = false;
                btnIni.Visible = false;
                txtTer.Visible = false;
                btnTer.Visible = false;
                lblIni.Visible = false;
                lblTer.Visible = false;
            }
        }

        protected void btnIni_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtIni.Text.Trim() != "")
                    cdrCalendar.SelectedDate = Convert.ToDateTime(txtIni.Text);
            }
            catch
            { }
            cdrCalendar.Visible = true;
        }
        protected void btnTer_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtTer.Text.Trim() != "")
                    cdrCalendar0.SelectedDate = Convert.ToDateTime(txtTer.Text);
            }
            catch
            { }
            cdrCalendar0.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtPesquisar.Text.Trim() != "")
            {
                lblErroConsultar.Text = "";
            }
            else
            {
                lblErroConsultar.Text = "Nenhum item encontrado!!!";
            }
        }
    }
}