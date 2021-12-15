<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SSP_Ubicar_Ciudades.aspx.vb" Inherits="SSP_Ubicar_Ciudades.SSP_Ubicar_Ciudades" %>

<%@ Register assembly="DevExpress.Web.v15.2, Version=15.2.11.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-decoration: underline;
            font-size: xx-large;
        }
        .auto-style3 {
            width: 260px;
            height: 96px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <img alt="" class="auto-style3" src="file:///C:/Users/richard.martinezo/Pictures/logo_header.png" /><br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2"><strong>&nbsp;Edición de Ciudades SSP</strong></span><br />
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Sql_SSP" KeyFieldName="id">
            <SettingsEditing Mode="Batch">
            </SettingsEditing>
            <Settings ShowFilterRow="True" ShowGroupPanel="True" />
            <SettingsSearchPanel Visible="True" />
            <Columns>
                <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowEditButton="True" ShowInCustomizationForm="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="1">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="form_id" ShowInCustomizationForm="True" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="entry_id" ShowInCustomizationForm="True" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="nombre" ShowInCustomizationForm="True" VisibleIndex="8">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="email" ShowInCustomizationForm="True" VisibleIndex="9">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="telefono" ShowInCustomizationForm="True" VisibleIndex="10">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ubicacion" ShowInCustomizationForm="True" VisibleIndex="11">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="lugar" ShowInCustomizationForm="True" VisibleIndex="7">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="fecha" ShowInCustomizationForm="True" VisibleIndex="12">
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="hora" ShowInCustomizationForm="True" VisibleIndex="13">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="01_02_Explotador" ShowInCustomizationForm="True" VisibleIndex="14">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="11_12_Nombre_del_Aerodromo" ShowInCustomizationForm="True" VisibleIndex="21">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="11_12_14_Aerodromo_Posicion_si_se_conoce" ShowInCustomizationForm="True" VisibleIndex="22">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Aerodromo_Destino" ShowInCustomizationForm="True" VisibleIndex="43">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Aerodromo_Salida" ShowInCustomizationForm="True" VisibleIndex="44">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="AI_Motor_1" ShowInCustomizationForm="True" VisibleIndex="45">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="AI_Motor_2" ShowInCustomizationForm="True" VisibleIndex="46">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Nombre_Espacio_Aereo" ShowInCustomizationForm="True" VisibleIndex="84">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Nombre_Sector_ATC" ShowInCustomizationForm="True" VisibleIndex="85">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Nombre_Unidad_ATS" ShowInCustomizationForm="True" VisibleIndex="86">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataComboBoxColumn FieldName="lugar_id" ShowInCustomizationForm="True" VisibleIndex="6">
                    <PropertiesComboBox DataSourceID="Sql_SSP0" EnableCallbackMode="True" FilterMinLength="3" LoadDropDownOnDemand="True" TextField="ciudad" ValueField="id" ValueType="System.Int32">
                        <Columns>
                            <dx:ListBoxColumn FieldName="ciudad" />
                            <dx:ListBoxColumn FieldName="aerodromo" />
                            <dx:ListBoxColumn FieldName="aeropuerto" />
                            <dx:ListBoxColumn FieldName="pais" />
                            <dx:ListBoxColumn FieldName="punto_ruta_oaci" />
                        </Columns>
                    </PropertiesComboBox>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataCheckColumn FieldName="Validado" VisibleIndex="2">
                </dx:GridViewDataCheckColumn>
                <dx:GridViewDataDateColumn FieldName="entry_date_created" VisibleIndex="5">
                    <PropertiesDateEdit DisplayFormatString="">
                    </PropertiesDateEdit>
                </dx:GridViewDataDateColumn>
            </Columns>
            <Styles>
                <AlternatingRow BackColor="#FFCC99">
                </AlternatingRow>
            </Styles>
        </dx:ASPxGridView>
        <br />
        <asp:SqlDataSource ID="Sql_SSP" runat="server" ConnectionString="<%$ ConnectionStrings:SSP_BIConnectionString %>" DeleteCommand="DELETE FROM [Reportes_SSP_Master] WHERE [id] = @id" SelectCommand="SELECT id, form_id, entry_id, entry_date_created, nombre_formulario, fecha_creacion, nombre, email, telefono, ubicacion, lugar, lugar_id, fecha, hora, descripcion, [01_02_Explotador], [03_04_Marca_Modelo_de_Aeronave], [05_06_Marca_Modelo_de_Motor], [07_Matricula_de_Aeronave], [08_Fecha_del_Choque], [08_Fecha], [09_Hora], [10_Condiciones_de_Luz], [11_12_Nombre_del_Aerodromo], [11_12_14_Aerodromo_Posicion_si_se_conoce], [13_Pista_Utilizada], [14_Posicion_si_fue_en_ruta], [15_Altura_pies], [16_Velocidad_Indicada_nudos], [17_Fase_de_vuelo], [37_Condiciones_del_Cielo], [41_Especie_de_Ave], [42_Observadas], [43_Golpeadas], [44_Tamano_de_las_Aves], [45_Se_Advirtio_del_Peligro], [46_47_Observaciones], [52_Tiempo_Aeronave_Fuera_Servicio], [53_Costes_Estimado_para_Reparacion_o_Sustitucion], [54_Otros_Costes_Estimados], A1, A2, AD1, AD2, Adjuntar_Archivo, Aerodromo_Destino, Aerodromo_Salida, AI_Motor_1, AI_Motor_2, AS1, AS2, Carga_Trabajo_ATC, Categoria_Vuelo, CCO_ATC, Clase_de_Espacio_Aereo, Condiciones_de_Luz, Condiciones_Meteorologicas_Relevantes, Condiciones_Meteorologicas, CSR1, CSR2, Danadas, Dano_Aeronave, Duracion_Vuelo, Fase_Vuelo, Fatalidad_P, Fatalidad_T, Frecuencia_RTF, Golpeados, Graves_P, Graves_T, [Horizontal_(NM)], Jornada_Trabajo, Latitud, Lic_ATC, Longitud, M1, M2, Matricula, Menores_P, Menores_T, Modelo_Matricula, MSAW, MSR1, MSR2, Ninguno_P, Ninguno_T, Nombre_Espacio_Aereo, Nombre_Sector_ATC, Nombre_Unidad_ATS, NV1, NV2, O1, O2, Operador, Otras_Consecuencias_Vuelo, Otras_Danadas, Otras_Golpeadas, Otros_TO, PE_Motor_1, PE_Motor_2, RV1, RV2, Servicio_ATC_Provisto, STCA, Tipo_Espacio_Aereo, Tipo_Informacion_Trafico_Provisto, Tipo_de_Operacion, Tipo_Modulo, V1, V2, Vertical_FT, Validado, date FROM Reportes_SSP_Master ORDER BY fecha, [08_Fecha], [08_Fecha_del_Choque]" UpdateCommand="UPDATE Reportes_SSP_Master SET lugar_id = @lugar_id,  Validado = @Validado WHERE (id = @id)">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int64" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lugar_id" Type="Int64" />
                <asp:Parameter Name="Validado" />
                <asp:Parameter Name="id" Type="Int64" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="Sql_SSP0" runat="server" ConnectionString="<%$ ConnectionStrings:SSP_BIConnectionString %>" EnableCaching="True" SelectCommand="SELECT * FROM [Vista_aeropuertos]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
