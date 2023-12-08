<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="519103c8-826c-41f3-8391-9639cd0cdfab" Description="Description for UPM_IPS.DSPMPVSCD_UPMovie.DSPMPVSCD_UPMovie" Name="DSPMPVSCD_UPMovie" DisplayName="DSPMPVSCD_UPMovie" Namespace="UPM_IPS.DSPMPVSCD_UPMovie" ProductName="DSPMPVSCD_UPMovie" CompanyName="UPM_IPS" PackageGuid="1db3b53e-c312-4f3c-905d-e58fb47dac7a" PackageNamespace="UPM_IPS.DSPMPVSCD_UPMovie" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="fb514d59-5a75-4708-b471-25d330fd4a12" Description="Description for UPM_IPS.DSPMPVSCD_UPMovie.UPMovie" Name="UPMovie" DisplayName="UPMovie" Namespace="UPM_IPS.DSPMPVSCD_UPMovie">
      <Properties>
        <DomainProperty Id="a1d26651-dc4c-49c9-94c7-011741419f45" Description="Description for UPM_IPS.DSPMPVSCD_UPMovie.UPMovie.Dominio" Name="Dominio" DisplayName="Dominio" DefaultValue="UPMovie.etsisi.upm.es">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="e205b386-21de-4602-aa31-63aa47565efa" Description="Description for UPM_IPS.DSPMPVSCD_UPMovie.Cliente" Name="Cliente" DisplayName="Cliente" Namespace="UPM_IPS.DSPMPVSCD_UPMovie">
      <Properties>
        <DomainProperty Id="46c8722a-8ae7-40af-96d7-165341a51750" Description="Description for UPM_IPS.DSPMPVSCD_UPMovie.Cliente.Correo" Name="Correo" DisplayName="Correo">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="d81a0686-d47a-4ca6-8f8f-807587a1c08e" Description="Description for UPM_IPS.DSPMPVSCD_UPMovie.Cliente.Nombre" Name="Nombre" DisplayName="Nombre">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="dc08413b-2298-477b-ac13-53ce02b55d5d" Description="Description for UPM_IPS.DSPMPVSCD_UPMovie.Cliente.Teléfono" Name="Teléfono" DisplayName="Teléfono">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="cdca83cf-4a38-4ed2-b250-31c5b754ee82" Description="Description for UPM_IPS.DSPMPVSCD_UPMovie.Cliente.Es Cliente" Name="esCliente" DisplayName="Es Cliente">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="c1a3ff80-4354-42b7-9c25-56ef0bcf35b8" Description="Description for UPM_IPS.DSPMPVSCD_UPMovie.Cliente.Login" Name="Login" DisplayName="Login">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="a6399cba-dee4-48d9-853d-4e6bd2580313" Description="Description for UPM_IPS.DSPMPVSCD_UPMovie.Lista_de_Reproducción" Name="Lista_de_Reproducción" DisplayName="Lista_de_ Reproducción" Namespace="UPM_IPS.DSPMPVSCD_UPMovie">
      <Properties>
        <DomainProperty Id="7d541274-6a05-404a-8cb7-ceecd1a40109" Description="Description for UPM_IPS.DSPMPVSCD_UPMovie.Lista_de_Reproducción.Nombre" Name="Nombre" DisplayName="Nombre">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="495e30db-f800-4707-8571-3200307d65b7" Description="Description for UPM_IPS.DSPMPVSCD_UPMovie.Lista_de_Reproducción.Tiempo Total" Name="TiempoTotal" DisplayName="Tiempo Total">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="a8a020b5-f578-480a-814f-8e2d6e5f1adc" Description="Description for UPM_IPS.DSPMPVSCD_UPMovie.Lista_de_Reproducción.Descripción" Name="Descripción" DisplayName="Descripción">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="dff4f599-95b1-432e-85cf-9213cfb7c32e" Description="Description for UPM_IPS.DSPMPVSCD_UPMovie.Lista_de_Reproducción.Anadir Pelicula" Name="AnadirPelicula" DisplayName="Anadir Pelicula">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="c709e937-cb01-40d7-8a8a-91db361c7337" Description="Description for UPM_IPS.DSPMPVSCD_UPMovie.Película" Name="Película" DisplayName="Película" Namespace="UPM_IPS.DSPMPVSCD_UPMovie">
      <Properties>
        <DomainProperty Id="0791dbf8-cd10-46c8-9356-14927e946e6c" Description="Description for UPM_IPS.DSPMPVSCD_UPMovie.Película.Nombre" Name="Nombre" DisplayName="Nombre">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="4d062a33-0e22-4713-ba9a-1448c1626937" Description="Description for UPM_IPS.DSPMPVSCD_UPMovie.Película.Duración" Name="Duración" DisplayName="Duración">
          <Type>
            <ExternalTypeMoniker Name="/System/Int64" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="e7a8156f-81b7-4902-ad35-d5f834072d5d" Description="Description for UPM_IPS.DSPMPVSCD_UPMovie.Película.Género" Name="Género" DisplayName="Género">
          <Type>
            <DomainEnumerationMoniker Name="TGénero" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="ab531b8b-5862-440b-828d-058d9c3dc5a8" Description="Description for UPM_IPS.DSPMPVSCD_UPMovie.Película.Precio" Name="Precio" DisplayName="Precio">
          <Type>
            <ExternalTypeMoniker Name="/System/Double" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="c4cceab9-20e4-4a6e-871a-5beb517c5d1b" Description="Description for UPM_IPS.DSPMPVSCD_UPMovie.Serie" Name="Serie" DisplayName="Serie" Namespace="UPM_IPS.DSPMPVSCD_UPMovie">
      <BaseClass>
        <DomainClassMoniker Name="Película" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="03b7bd26-453c-43d5-ae33-acbc7a408191" Description="Description for UPM_IPS.DSPMPVSCD_UPMovie.Serie.Num Episodios" Name="NumEpisodios" DisplayName="Num Episodios">
          <Type>
            <ExternalTypeMoniker Name="/System/Int32" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Types>
    <ExternalType Name="DateTime" Namespace="System" />
    <ExternalType Name="String" Namespace="System" />
    <ExternalType Name="Int16" Namespace="System" />
    <ExternalType Name="Int32" Namespace="System" />
    <ExternalType Name="Int64" Namespace="System" />
    <ExternalType Name="UInt16" Namespace="System" />
    <ExternalType Name="UInt32" Namespace="System" />
    <ExternalType Name="UInt64" Namespace="System" />
    <ExternalType Name="SByte" Namespace="System" />
    <ExternalType Name="Byte" Namespace="System" />
    <ExternalType Name="Double" Namespace="System" />
    <ExternalType Name="Single" Namespace="System" />
    <ExternalType Name="Guid" Namespace="System" />
    <ExternalType Name="Boolean" Namespace="System" />
    <ExternalType Name="Char" Namespace="System" />
    <DomainEnumeration Name="TGénero" Namespace="UPM_IPS.DSPMPVSCD_UPMovie" Description="Description for UPM_IPS.DSPMPVSCD_UPMovie.TGénero">
      <Literals>
        <EnumerationLiteral Description="Description for UPM_IPS.DSPMPVSCD_UPMovie.TGénero.Terror" Name="Terror" Value="5" />
        <EnumerationLiteral Description="Description for UPM_IPS.DSPMPVSCD_UPMovie.TGénero.Fantasía" Name="Fantasía" Value="3" />
        <EnumerationLiteral Description="Description for UPM_IPS.DSPMPVSCD_UPMovie.TGénero.Documental" Name="Documental" Value="2" />
        <EnumerationLiteral Description="Description for UPM_IPS.DSPMPVSCD_UPMovie.TGénero.Acción" Name="Acción" Value="1" />
        <EnumerationLiteral Description="Description for UPM_IPS.DSPMPVSCD_UPMovie.TGénero.Infantil" Name="Infantil" Value="4" />
      </Literals>
    </DomainEnumeration>
  </Types>
  <XmlSerializationBehavior Name="DSPMPVSCD_UPMovieSerializationBehavior" Namespace="UPM_IPS.DSPMPVSCD_UPMovie">
    <ClassData>
      <XmlClassData TypeName="UPMovie" MonikerAttributeName="" SerializeId="true" MonikerElementName="uPMovieMoniker" ElementName="uPMovie" MonikerTypeName="UPMovieMoniker">
        <DomainClassMoniker Name="UPMovie" />
        <ElementData>
          <XmlPropertyData XmlName="dominio">
            <DomainPropertyMoniker Name="UPMovie/Dominio" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Cliente" MonikerAttributeName="" SerializeId="true" MonikerElementName="clienteMoniker" ElementName="cliente" MonikerTypeName="ClienteMoniker">
        <DomainClassMoniker Name="Cliente" />
        <ElementData>
          <XmlPropertyData XmlName="correo">
            <DomainPropertyMoniker Name="Cliente/Correo" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="Cliente/Nombre" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="teléfono">
            <DomainPropertyMoniker Name="Cliente/Teléfono" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="esCliente">
            <DomainPropertyMoniker Name="Cliente/esCliente" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="login">
            <DomainPropertyMoniker Name="Cliente/Login" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Lista_de_Reproducción" MonikerAttributeName="" SerializeId="true" MonikerElementName="lista_de_ReproducciónMoniker" ElementName="lista_de_Reproducción" MonikerTypeName="Lista_de_ReproducciónMoniker">
        <DomainClassMoniker Name="Lista_de_Reproducción" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="Lista_de_Reproducción/Nombre" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="tiempoTotal">
            <DomainPropertyMoniker Name="Lista_de_Reproducción/TiempoTotal" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="descripción">
            <DomainPropertyMoniker Name="Lista_de_Reproducción/Descripción" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="anadirPelicula">
            <DomainPropertyMoniker Name="Lista_de_Reproducción/AnadirPelicula" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Película" MonikerAttributeName="" SerializeId="true" MonikerElementName="películaMoniker" ElementName="película" MonikerTypeName="PelículaMoniker">
        <DomainClassMoniker Name="Película" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="Película/Nombre" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="duración">
            <DomainPropertyMoniker Name="Película/Duración" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="género">
            <DomainPropertyMoniker Name="Película/Género" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="precio">
            <DomainPropertyMoniker Name="Película/Precio" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Serie" MonikerAttributeName="" SerializeId="true" MonikerElementName="serieMoniker" ElementName="serie" MonikerTypeName="SerieMoniker">
        <DomainClassMoniker Name="Serie" />
        <ElementData>
          <XmlPropertyData XmlName="numEpisodios">
            <DomainPropertyMoniker Name="Serie/NumEpisodios" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="DSPMPVSCD_UPMovieExplorer" />
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="DSPMPVSCD_DSLUPMovie" EditorGuid="a68d7015-d17c-4625-aeee-1713e8146ed6">
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="DSPMPVSCD_UPMovieSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="DSPMPVSCD_UPMovie">
      <ElementTool Name="ExampleElement" ToolboxIcon="resources\exampleshapetoolbitmap.bmp" Caption="ExampleElement" Tooltip="Create an ExampleElement" HelpKeyword="CreateExampleClassF1Keyword" />
      <ConnectionTool Name="ExampleRelationship" ToolboxIcon="resources\exampleconnectortoolbitmap.bmp" Caption="ExampleRelationship" Tooltip="Drag between ExampleElements to create an ExampleRelationship" HelpKeyword="ConnectExampleRelationF1Keyword" />
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
  </Designer>
  <Explorer ExplorerGuid="751a2408-0a59-445d-88a6-a3385a81d275" Title="DSPMPVSCD_UPMovie Explorer">
    <ExplorerBehaviorMoniker Name="DSPMPVSCD_UPMovie/DSPMPVSCD_UPMovieExplorer" />
  </Explorer>
</Dsl>