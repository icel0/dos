using System;

namespace YourNamespace
{
    public partial class Default : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Validar que los campos requeridos tengan valores
            if (IsValid)
            {
                // Asignar valores a las etiquetas de resultados
                lblFirstName.Text = txtFirstName.Text;
                lblLastName.Text = txtLastName.Text;
                lblDateOfBirth.Text = txtDateOfBirth.Text;
                lblGender.Text = ddlGender.SelectedValue;
                lblBloodGroup.Text = ddlBloodGroup.SelectedValue;
                lblAdmissionDateTime.Text = txtAdmissionDateTime.Text;
                lblDischargeDateTime.Text = txtDischargeDateTime.Text;
 

                // Mostrar el panel de resultados
                pnlResults.Visible = true;
            }
        }
    }
}
