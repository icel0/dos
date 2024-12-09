<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="YourNamespace.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registro del Paciente</title>
     <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #E7ECF3;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            color: #333;
            font-size: 18px; 
        }

        form {
            max-width: 400px;
            margin: 10px auto;
            background-color: #ffffff;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 15px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        label {
            font-weight: bold;
            color: #555;
            display: block;
            margin-bottom: 5px;
            font-size: 14px;
        }

        input, select {
            width: 100%;
            padding: 6px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 12px; 
        }

        button {
            display: block;
            width: 100%;
            background-color: #007bff;
            color: #fff;
            padding: 8px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
        }

        button:hover {
            background-color: #0056b3;
        }

        .results {
            max-width: 600px;
            margin: 20px auto;
            background-color: #75B1DB;
            border: 1px solid #b5d8b5;
            border-radius: 10px;
            padding: 20px;
        }

        .results h3 {
            color: #B0C5D4;
            font-size: 16px
        }

        .results p {
            color: #444;
            margin: 5px 0;
            font-size: 12px; 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Registro del Paciente</h2>
        
        <div>
            <label for="FirstName">Nombre:</label>
            <asp:TextBox ID="txtFirstName" runat="server" required="required"></asp:TextBox>
        </div>

        <div>
            <label for="LastName">Apellido:</label>
            <asp:TextBox ID="txtLastName" runat="server" required="required"></asp:TextBox>
        </div>

        <div>
            <label for="DateOfBirth">Fecha de Nacimiento:</label>
            <asp:TextBox ID="txtDateOfBirth" runat="server" TextMode="Date"></asp:TextBox>
        </div>

        <div>
            <label for="Gender">Género:</label>
            <asp:DropDownList ID="ddlGender" runat="server">
                <asp:ListItem Text="Seleccionar" Value="" />
                <asp:ListItem Text="Hombre" Value="Male" />
                <asp:ListItem Text="Mujer" Value="Female" />
            </asp:DropDownList>
        </div>

        <div>
            <label for="BloodGroup">Tipo de Sangre:</label>
            <asp:DropDownList ID="ddlBloodGroup" runat="server">
                <asp:ListItem Text="Seleccionar" Value="" />
                <asp:ListItem Text="A+" Value="A+" />
                <asp:ListItem Text="A-" Value="A-" />
                <asp:ListItem Text="B+" Value="B+" />
                <asp:ListItem Text="B-" Value="B-" />
                <asp:ListItem Text="AB+" Value="AB+" />
                <asp:ListItem Text="AB-" Value="AB-" />
                <asp:ListItem Text="O+" Value="O+" />
                <asp:ListItem Text="O-" Value="O-" />
            </asp:DropDownList>
        </div>

        <div>
            <label for="AdmissionReason">Motivo de Admisión:</label>
             <asp:DropDownList ID="ddlAdmissionReason" runat="server" required="required">
        <asp:ListItem Text="Seleccionar" Value="" />
        <asp:ListItem Text="Trastorno autoinmune" Value="Trastorno autoinmune" />
        <asp:ListItem Text="Problema metabólico" Value="Problema metabólico" />
        <asp:ListItem Text="Enfermedad neurológica" Value="Enfermedad neurológica" />
        <asp:ListItem Text="Trastorno gastrointestinal" Value="Trastorno gastrointestinal" />
        <asp:ListItem Text="Trastorno psicológico" Value="Trastorno psicológico" />
        <asp:ListItem Text="Enfermedades cardiovasculares" Value="Enfermedades cardiovasculares" />
        <asp:ListItem Text="Enfermedad crónica" Value="Enfermedad crónica" />
    </asp:DropDownList>
        </div>

        <div>
            <label for="AdmissionDateTime">Día y Hora de Admisión:</label>
            <asp:TextBox ID="txtAdmissionDateTime" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
        </div>

        <div>
            <label for="DischargeDateTime">Día y Hora de Alta:</label>
            <asp:TextBox ID="txtDischargeDateTime" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
        </div>

      

        <asp:Button ID="btnSubmit" runat="server" Text="Enviar" OnClick="btnSubmit_Click" />

        <asp:Panel ID="pnlResults" runat="server" Visible="false">
            <h2>Resumen del Paciente</h2>
            <p><strong>Nombre:</strong> <asp:Label ID="lblFirstName" runat="server" /></p>
            <p><strong>Apellido:</strong> <asp:Label ID="lblLastName" runat="server" /></p>
            <p><strong>Fecha de Nacimiento:</strong> <asp:Label ID="lblDateOfBirth" runat="server" /></p>
            <p><strong>Género:</strong> <asp:Label ID="lblGender" runat="server" /></p>
            <p><strong>Tipo de Sangre:</strong> <asp:Label ID="lblBloodGroup" runat="server" /></p>
            <p><strong>Motivo de Admisión:</strong> <asp:Label ID="lblAdmissionReason" runat="server" /></p>
            <p><strong>Fecha y Hora de Admisión:</strong> <asp:Label ID="lblAdmissionDateTime" runat="server" /></p>
            <p><strong>Fecha y Hora de Alta:</strong> <asp:Label ID="lblDischargeDateTime" runat="server" /></p>
  
        </asp:Panel>
    </form>
</body>
</html>
