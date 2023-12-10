<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="bcdf2971-6400-4c1a-beee-ea4400c69d7b" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.DSPMPVSCDProyectoIPS" Name="DSPMPVSCDProyectoIPS" DisplayName="DSPMPVSCDProyectoIPS" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS" ProductName="DSPMPVSCDProyectoIPS" CompanyName="UPM_IPS" PackageGuid="407613d8-6771-415b-a380-b3eb0239ac37" PackageNamespace="UPM_IPS.DSPMPVSCDProyectoIPS" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="0d76f7f3-f577-4384-9caa-d427cefa0cc0" Description="The root in which all other elements are embedded. Appears as a diagram." Name="TapizDiagramaClases" DisplayName="Tapiz Diagrama Clases" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS">
      <Properties>
        <DomainProperty Id="119dbf93-2e96-4b54-9b60-c70bd4781eeb" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.TapizDiagramaClases.Solucion Diagrama" Name="solucionDiagrama" DisplayName="Solucion Diagrama">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Clase" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>TapizDiagramaClasesHasClases.Clases</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="f881c3ab-08e1-440a-99c6-89fe00c32cf4" Description="Elements embedded in the model. Appear as boxes on the diagram." Name="Atributo" DisplayName="Atributo" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS">
      <Properties>
        <DomainProperty Id="6d7b48f0-9fbd-4213-b17c-03ea20158f27" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.Atributo.Nombre" Name="Nombre" DisplayName="Nombre" DefaultValue="" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="73518c2a-2913-4119-8f0d-b376ea8bf977" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.Atributo.Tipo Dato" Name="TipoDato" DisplayName="Tipo Dato">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="94c699db-c2ea-4c77-b244-94c202880307" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.Atributo.Nombre YTipo" Name="NombreYTipo" DisplayName="Nombre YTipo" Kind="Calculated" IsBrowsable="false" IsUIReadOnly="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="d630cbf8-6859-4c35-bff4-da7d27cca219" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.Operacion" Name="Operacion" DisplayName="Operacion" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS">
      <Properties>
        <DomainProperty Id="fd1dbe39-e756-42c6-95cd-d2d72dd58a92" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.Operacion.Nombre" Name="Nombre" DisplayName="Nombre">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="bbac475a-7def-412f-806f-2144f926611d" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.Operacion.Conjunto Datos" Name="ConjuntoDatos" DisplayName="Conjunto Datos">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="34f5d702-00be-45f4-8fe9-0f8de93d2d70" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.Operacion.Nombre YParametros" Name="NombreYParametros" DisplayName="Nombre YParametros" Kind="CustomStorage" IsBrowsable="false" IsUIReadOnly="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="88146686-d5b7-47a9-b54f-cb838cf21d71" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.Clase" Name="Clase" DisplayName="Clase" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS">
      <Properties>
        <DomainProperty Id="6f6a955b-faae-4b28-8fab-5f94f25fa13a" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.Clase.Nombre" Name="Nombre" DisplayName="Nombre" DefaultValue="Clase 1">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Atributo" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ClaseHasAtributo.Atributo</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Operacion" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ClaseHasOperacion.Operacioned</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="193a3cf6-1a97-445e-a4f5-ea701b36c84e" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.EstiloOperacion" Name="EstiloOperacion" DisplayName="Estilo Operacion" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS">
      <Properties>
        <DomainProperty Id="e199e8cf-d469-4310-83a6-e873578a26a8" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.EstiloOperacion.Tipo Letra" Name="TipoLetra" DisplayName="Tipo Letra">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="d7bd54e0-9020-4f70-b018-de11ea5a3386" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.EstiloOperacion.Color Letra" Name="ColorLetra" DisplayName="Color Letra">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="94ea1d32-cc0d-44e3-937f-ded04a88c7a9" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseEnriquecida" Name="ClaseEnriquecida" DisplayName="Clase Enriquecida" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS">
      <BaseClass>
        <DomainClassMoniker Name="Clase" />
      </BaseClass>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="EstiloClase" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ClaseEnriquecidaHasEstiloClases.EstiloClases</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="EstiloAtributo" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ClaseEnriquecidaHasEstiloAtributo.EstiloAtributo</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="EstiloOperacion" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ClaseEnriquecidaHasEstiloOperacioned.EstiloOperacioned</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="0f033ebd-d248-4809-833f-9e0e36f53fcc" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.EstiloClase" Name="EstiloClase" DisplayName="Estilo Clase" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS">
      <Properties>
        <DomainProperty Id="c596ff67-146e-49f4-8d5d-aca63bbede38" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.EstiloClase.Color Fondo" Name="ColorFondo" DisplayName="Color Fondo" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="f9bfed65-27e2-4a41-b471-03ad00adf7da" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.EstiloClase.Color Letra" Name="ColorLetra" DisplayName="Color Letra">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="a34d747c-9f3a-4b50-8a7b-634c07c63776" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.EstiloClase.Tipo Letra" Name="TipoLetra" DisplayName="Tipo Letra">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="910da379-09d6-41c6-8253-2d19c0c769ff" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.EstiloClase.Alineacion" Name="Alineacion" DisplayName="Alineacion">
          <Type>
            <DomainEnumerationMoniker Name="TAlineacion" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="84f89e56-f89f-409f-a82f-c041a846ecb2" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.EstiloAtributo" Name="EstiloAtributo" DisplayName="Estilo Atributo" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS">
      <Properties>
        <DomainProperty Id="72823a17-1011-4909-ab22-5bda518a9bb2" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.EstiloAtributo.Tipo Letra" Name="TipoLetra" DisplayName="Tipo Letra" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="88ebdaa8-e850-4bb7-83fa-fcb4cfd8954b" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.EstiloAtributo.Color Letra" Name="ColorLetra" DisplayName="Color Letra">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="f83e5fe0-85ca-4338-b1bc-242150960114" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.TapizDiagramaClasesHasClases" Name="TapizDiagramaClasesHasClases" DisplayName="Tapiz Diagrama Clases Has Clases" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS" IsEmbedding="true">
      <Source>
        <DomainRole Id="3b38edf2-aaff-4051-adb3-93090a46e46c" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.TapizDiagramaClasesHasClases.TapizDiagramaClases" Name="TapizDiagramaClases" DisplayName="Tapiz Diagrama Clases" PropertyName="Clases" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Clases">
          <RolePlayer>
            <DomainClassMoniker Name="TapizDiagramaClases" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="f4011aeb-1b23-45a2-985c-ff4c054b32db" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.TapizDiagramaClasesHasClases.Clase" Name="Clase" DisplayName="Clase" PropertyName="TapizDiagramaClases" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Tapiz Diagrama Clases">
          <RolePlayer>
            <DomainClassMoniker Name="Clase" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="20608cd2-6bf1-48b6-8816-a30ba34fb4a2" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseHasAtributo" Name="ClaseHasAtributo" DisplayName="Clase Has Atributo" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS" IsEmbedding="true">
      <Source>
        <DomainRole Id="738c2b79-1b16-40e4-a92d-cea5de6dfe5d" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseHasAtributo.Clase" Name="Clase" DisplayName="Clase" PropertyName="Atributo" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Atributo">
          <RolePlayer>
            <DomainClassMoniker Name="Clase" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="fb1492ba-eba7-4875-9bba-23f64414598a" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseHasAtributo.Atributo" Name="Atributo" DisplayName="Atributo" PropertyName="Clase" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Clase">
          <RolePlayer>
            <DomainClassMoniker Name="Atributo" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="86e4fedf-06d6-4a51-a78e-faa90c42647a" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseHasOperacion" Name="ClaseHasOperacion" DisplayName="Clase Has Operacion" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS" IsEmbedding="true">
      <Source>
        <DomainRole Id="443872b2-8050-4b4d-bcd6-3ec689a73d99" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseHasOperacion.Clase" Name="Clase" DisplayName="Clase" PropertyName="Operacioned" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Operacioned">
          <RolePlayer>
            <DomainClassMoniker Name="Clase" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="9fcab2d6-3ac7-47c7-9bda-6ce5ff490048" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseHasOperacion.Operacion" Name="Operacion" DisplayName="Operacion" PropertyName="Clase" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Clase">
          <RolePlayer>
            <DomainClassMoniker Name="Operacion" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="ff26d184-8442-42d0-8730-cdd29d18d6c0" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseHeredaClase" Name="ClaseHeredaClase" DisplayName="Clase Hereda Clase" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS">
      <Properties>
        <DomainProperty Id="dca012fb-6135-4f51-a37d-d6e23ff47551" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseHeredaClase.Tipo Herencia" Name="TipoHerencia" DisplayName="Tipo Herencia" DefaultValue="TotalDisjunta">
          <Type>
            <DomainEnumerationMoniker Name="TTipoHerencia" />
          </Type>
        </DomainProperty>
      </Properties>
      <Source>
        <DomainRole Id="84cc5f54-f776-46fd-883f-f352f78ac780" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseHeredaClase.SourceClase" Name="SourceClase" DisplayName="Source Clase" PropertyName="ClaseHija" PropertyDisplayName="Clase Hija">
          <RolePlayer>
            <DomainClassMoniker Name="Clase" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="34be280c-9133-4959-aa39-8aba082dd7ab" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseHeredaClase.TargetClase" Name="TargetClase" DisplayName="Target Clase" PropertyName="ClasePadre" Multiplicity="ZeroOne" PropertyDisplayName="Clase Padre">
          <RolePlayer>
            <DomainClassMoniker Name="Clase" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="8849f571-41f8-43cd-a734-5b60822ad06f" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseEnriquecidaHasEstiloClases" Name="ClaseEnriquecidaHasEstiloClases" DisplayName="Clase Enriquecida Has Estilo Clases" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS" IsEmbedding="true">
      <Source>
        <DomainRole Id="459aa288-b1e8-4185-8e97-a2f66c34365b" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseEnriquecidaHasEstiloClases.ClaseEnriquecida" Name="ClaseEnriquecida" DisplayName="Clase Enriquecida" PropertyName="EstiloClases" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Estilo Clases">
          <RolePlayer>
            <DomainClassMoniker Name="ClaseEnriquecida" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="5d402e6a-0789-408b-bc1c-f83d3a6bcfe0" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseEnriquecidaHasEstiloClases.EstiloClase" Name="EstiloClase" DisplayName="Estilo Clase" PropertyName="ClaseEnriquecida" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Clase Enriquecida">
          <RolePlayer>
            <DomainClassMoniker Name="EstiloClase" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="44e2a83f-2c0e-4e2f-9f09-8762749e3da3" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseEnriquecidaHasEstiloAtributo" Name="ClaseEnriquecidaHasEstiloAtributo" DisplayName="Clase Enriquecida Has Estilo Atributo" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS" IsEmbedding="true">
      <Source>
        <DomainRole Id="6cf96233-2265-4b9f-9098-b5e1f3017bb0" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseEnriquecidaHasEstiloAtributo.ClaseEnriquecida" Name="ClaseEnriquecida" DisplayName="Clase Enriquecida" PropertyName="EstiloAtributo" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Estilo Atributo">
          <RolePlayer>
            <DomainClassMoniker Name="ClaseEnriquecida" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="c23dbae7-faa6-4111-b5aa-3508be52d335" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseEnriquecidaHasEstiloAtributo.EstiloAtributo" Name="EstiloAtributo" DisplayName="Estilo Atributo" PropertyName="ClaseEnriquecida" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Clase Enriquecida">
          <RolePlayer>
            <DomainClassMoniker Name="EstiloAtributo" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="a469e74c-6a86-4c1b-b96b-d3fcc32c8bde" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseEnriquecidaHasEstiloOperacioned" Name="ClaseEnriquecidaHasEstiloOperacioned" DisplayName="Clase Enriquecida Has Estilo Operacioned" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS" IsEmbedding="true">
      <Source>
        <DomainRole Id="3acfabcf-9903-45c4-acb0-561262c5432d" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseEnriquecidaHasEstiloOperacioned.ClaseEnriquecida" Name="ClaseEnriquecida" DisplayName="Clase Enriquecida" PropertyName="EstiloOperacioned" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Estilo Operacioned">
          <RolePlayer>
            <DomainClassMoniker Name="ClaseEnriquecida" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="00967b2a-f41d-4f80-b41b-671d47176f1a" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseEnriquecidaHasEstiloOperacioned.EstiloOperacion" Name="EstiloOperacion" DisplayName="Estilo Operacion" PropertyName="ClaseEnriquecida" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Clase Enriquecida">
          <RolePlayer>
            <DomainClassMoniker Name="EstiloOperacion" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="56535df5-1faf-4cc9-a206-b08bea860465" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseAgregaClase" Name="ClaseAgregaClase" DisplayName="Clase Agrega Clase" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS">
      <Properties>
        <DomainProperty Id="b98794ee-c098-4046-8721-aea8f198523d" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseAgregaClase.Nombre" Name="Nombre" DisplayName="Nombre">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="3ed00840-3814-496d-a571-577271b318c3" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseAgregaClase.Cardinalidad Izquierda" Name="CardinalidadIzquierda" DisplayName="Cardinalidad Izquierda">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="b42e2e35-4278-44b7-806c-c6947c4b8a2a" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseAgregaClase.Cardinalidad Derecha" Name="CardinalidadDerecha" DisplayName="Cardinalidad Derecha">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <Source>
        <DomainRole Id="2fd54998-bcc0-4932-b6b3-94f073b259d8" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseAgregaClase.SourceClase" Name="SourceClase" DisplayName="Source Clase" PropertyName="ClaseAgregada" PropertyDisplayName="Clase Agregada">
          <RolePlayer>
            <DomainClassMoniker Name="Clase" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="546787ad-f970-46b8-8354-c64848baae2c" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseAgregaClase.TargetClase" Name="TargetClase" DisplayName="Target Clase" PropertyName="ClaseAgregante" PropertyDisplayName="Clase Agregante">
          <RolePlayer>
            <DomainClassMoniker Name="Clase" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="a6fdaa8f-94fd-438f-a831-1d666f71e0b1" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseComponeClase" Name="ClaseComponeClase" DisplayName="Clase Compone Clase" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS">
      <Properties>
        <DomainProperty Id="f6ad26fc-e936-4080-a8d1-77f35951354f" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseComponeClase.Nombre" Name="Nombre" DisplayName="Nombre">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="f4ac1df6-8781-486b-b537-defdba4294bf" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseComponeClase.Cardinalidad Izquierda" Name="CardinalidadIzquierda" DisplayName="Cardinalidad Izquierda">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="d6bd7899-26d1-4152-ac9a-256d7badf448" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseComponeClase.Cardinalidad Derecha" Name="CardinalidadDerecha" DisplayName="Cardinalidad Derecha">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <Source>
        <DomainRole Id="c925d2bb-406b-48b2-9b7a-9437aef65173" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseComponeClase.SourceClase" Name="SourceClase" DisplayName="Source Clase" PropertyName="ClaseComponente" PropertyDisplayName="Clase Componente">
          <RolePlayer>
            <DomainClassMoniker Name="Clase" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="875b3327-c6d6-41c9-8072-90e559e85cdb" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseComponeClase.TargetClase" Name="TargetClase" DisplayName="Target Clase" PropertyName="ClaseCompuesta" PropertyDisplayName="Clase Compuesta">
          <RolePlayer>
            <DomainClassMoniker Name="Clase" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="6ac4b6a7-89db-4052-9516-4b388e167d3d" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseAsociaClase" Name="ClaseAsociaClase" DisplayName="Clase Asocia Clase" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS">
      <Properties>
        <DomainProperty Id="2bb8c110-9eb2-4acf-9784-3676e5680456" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseAsociaClase.Nombre" Name="Nombre" DisplayName="Nombre">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="3751be09-f25f-4fa9-a535-5fadef5e86e7" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseAsociaClase.Cardinalidad Izquierda" Name="CardinalidadIzquierda" DisplayName="Cardinalidad Izquierda">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="801238af-71b8-4cf6-b854-7429ea0ab4f7" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseAsociaClase.Cardinalidad Derecha" Name="CardinalidadDerecha" DisplayName="Cardinalidad Derecha">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <Source>
        <DomainRole Id="148e56d4-6e9b-48e7-b1f3-fd26f8831bf6" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseAsociaClase.SourceClase" Name="SourceClase" DisplayName="Source Clase" PropertyName="ClaseAsociada" PropertyDisplayName="Clase Asociada">
          <RolePlayer>
            <DomainClassMoniker Name="Clase" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="9f657375-27fb-47fd-a488-f90f5fef82da" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.ClaseAsociaClase.TargetClase" Name="TargetClase" DisplayName="Target Clase" PropertyName="ClaseAsociante" PropertyDisplayName="Clase Asociante">
          <RolePlayer>
            <DomainClassMoniker Name="Clase" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
  </Relationships>
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
    <DomainEnumeration Name="TTipoHerencia" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.TTipoHerencia">
      <Literals>
        <EnumerationLiteral Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.TTipoHerencia.TotalSolapada" Name="TotalSolapada" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.TTipoHerencia.ParcialDisjunta" Name="ParcialDisjunta" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.TTipoHerencia.ParcialSolapada" Name="ParcialSolapada" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.TTipoHerencia.TotalDisjunta" Name="TotalDisjunta" Value="" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="TAlineacion" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.TAlineacion">
      <Literals>
        <EnumerationLiteral Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.TAlineacion.Izquierda" Name="Izquierda" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.TAlineacion.Derecha" Name="Derecha" Value="" />
        <EnumerationLiteral Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.TAlineacion.Centro" Name="Centro" Value="" />
      </Literals>
    </DomainEnumeration>
  </Types>
  <Shapes>
    <GeometryShape Id="0a08e156-82cd-46ff-bd10-523eefc9e0ac" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.MetaforaClase" Name="MetaforaClase" DisplayName="Metafora Clase" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS" FixedTooltipText="Metafora Clase" FillColor="Silver" InitialWidth="1.1" InitialHeight="2.6" OutlineThickness="0.05" FillGradientMode="None" Geometry="RoundedRectangle">
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NombreClase" DisplayName="Nombre Clase" DefaultText="NombreClase" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="03c6469b-07df-4473-b39c-a19c093c243d" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.MetaforaAtributo" Name="MetaforaAtributo" DisplayName="Metafora Atributo" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS" FixedTooltipText="Metafora Atributo" FillColor="RoyalBlue" InitialWidth="0.9" InitialHeight="0.5" OutlineThickness="0.05" FillGradientMode="None" Geometry="RoundedRectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NombreYTipo" DisplayName="Nombre Y Tipo" DefaultText="NombreYTipo" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="ae52298d-b373-4225-ac0b-dab96c9b2fd5" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.MetaforaOperacion" Name="MetaforaOperacion" DisplayName="Metafora Operacion" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS" FixedTooltipText="Metafora Operacion" FillColor="Red" InitialWidth="0.9" InitialHeight="0.5" OutlineThickness="0.05" FillGradientMode="None" Geometry="Rectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NombreYParametros" DisplayName="Nombre Y Parametros" DefaultText="NombreYParametros" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="478ab8ab-00de-4b3d-9f2d-01fac5da55f2" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.MetaforaClaseEnriquecida" Name="MetaforaClaseEnriquecida" DisplayName="Metafora Clase Enriquecida" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS" FixedTooltipText="Metafora Clase Enriquecida" FillColor="LightGreen" InitialWidth="1.1" InitialHeight="2.6" FillGradientMode="None" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NombreClaseEnriquecida" DisplayName="Nombre Clase Enriquecida" DefaultText="NombreClaseEnriquecida" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="be0e0a2b-e3e1-4899-8046-523bedd106c1" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.MetaforaEstiloClase" Name="MetaforaEstiloClase" DisplayName="Metafora Estilo Clase" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS" FixedTooltipText="Metafora Estilo Clase" FillColor="PeachPuff" InitialWidth="0.9" InitialHeight="0.5" FillGradientMode="None" Geometry="RoundedRectangle">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="ColorFondo" DisplayName="Color Fondo" DefaultText="ColorFondo" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="ColorLetra" DisplayName="Color Letra" DefaultText="ColorLetra" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="TipoLetra" DisplayName="Tipo Letra" DefaultText="TipoLetra" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Alineacion" DisplayName="Alineacion" DefaultText="Alineacion" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="4c1e439a-3c1a-47b5-92f3-e6885ed25559" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.MetaforaEstiloAtributo" Name="MetaforaEstiloAtributo" DisplayName="Metafora Estilo Atributo" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS" FixedTooltipText="Metafora Estilo Atributo" InitialHeight="1" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="TipoLetra" DisplayName="Tipo Letra" DefaultText="TipoLetra" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="ColorLetra" DisplayName="Color Letra" DefaultText="ColorLetra" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="4a7c1b58-495b-49dd-8193-932a8e1654d8" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.MetaforaEstiloOperacion" Name="MetaforaEstiloOperacion" DisplayName="Metafora Estilo Operacion" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS" FixedTooltipText="Metafora Estilo Operacion" InitialHeight="1" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="TipoLetra" DisplayName="Tipo Letra" DefaultText="TipoLetra" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="ColorLetra" DisplayName="Color Letra" DefaultText="ColorLetra" />
      </ShapeHasDecorators>
    </GeometryShape>
  </Shapes>
  <Connectors>
    <Connector Id="72ef84ee-643a-4746-a295-40df746f139c" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.MetaforaHerencia" Name="MetaforaHerencia" DisplayName="Metafora Herencia" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS" FixedTooltipText="Metafora Herencia" TargetEndStyle="HollowArrow">
      <ConnectorHasDecorators Position="SourceTop" OffsetFromShape="0" OffsetFromLine="0" isMoveable="true">
        <TextDecorator Name="TipoHerencia" DisplayName="Tipo Herencia" DefaultText="TipoHerencia" />
      </ConnectorHasDecorators>
    </Connector>
    <Connector Id="b8862e27-676b-4c1e-bef5-4c96376b0109" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.MetaforaAgregacion" Name="MetaforaAgregacion" DisplayName="Metafora Agregacion" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS" FixedTooltipText="Metafora Agregacion" TargetEndStyle="EmptyDiamond">
      <ConnectorHasDecorators Position="SourceTop" OffsetFromShape="0" OffsetFromLine="0" isMoveable="true">
        <TextDecorator Name="NombreRelacion" DisplayName="Nombre Relacion" DefaultText="Nombre" />
      </ConnectorHasDecorators>
      <ConnectorHasDecorators Position="SourceTop" OffsetFromShape="0" OffsetFromLine="0">
        <TextDecorator Name="CardinalidadIzquierda" DisplayName="Cardinalidad Izquierda" DefaultText="CardinalidadIzquierda" />
      </ConnectorHasDecorators>
      <ConnectorHasDecorators Position="TargetBottom" OffsetFromShape="0" OffsetFromLine="0">
        <TextDecorator Name="CardinalidadDerecha" DisplayName="Cardinalidad Derecha" DefaultText="CardinalidadDerecha" />
      </ConnectorHasDecorators>
    </Connector>
    <Connector Id="aeb8c1ea-76bc-4ee0-8ff5-ddc5332458da" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.MetaforaComposicion" Name="MetaforaComposicion" DisplayName="Metafora Composicion" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS" FixedTooltipText="Metafora Composicion" TargetEndStyle="FilledDiamond">
      <ConnectorHasDecorators Position="SourceTop" OffsetFromShape="0" OffsetFromLine="0" isMoveable="true">
        <TextDecorator Name="NombreRelacion" DisplayName="Nombre Relacion" DefaultText="Nombre" />
      </ConnectorHasDecorators>
      <ConnectorHasDecorators Position="SourceTop" OffsetFromShape="0" OffsetFromLine="0">
        <TextDecorator Name="CardinalidadIzquierda" DisplayName="Cardinalidad Izquierda" DefaultText="CardinalidadIzquierda" />
      </ConnectorHasDecorators>
      <ConnectorHasDecorators Position="TargetBottom" OffsetFromShape="0" OffsetFromLine="0">
        <TextDecorator Name="CardinalidadDerecha" DisplayName="Cardinalidad Derecha" DefaultText="CardinalidadDerecha" />
      </ConnectorHasDecorators>
    </Connector>
    <Connector Id="4547ff50-c55a-410c-8c8b-a258645c9b18" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.MetaforaAsociacion" Name="MetaforaAsociacion" DisplayName="Metafora Asociacion" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS" FixedTooltipText="Metafora Asociacion">
      <ConnectorHasDecorators Position="SourceTop" OffsetFromShape="0" OffsetFromLine="0" isMoveable="true">
        <TextDecorator Name="NombreRelacion" DisplayName="Nombre Relacion" DefaultText="Nombre" />
      </ConnectorHasDecorators>
      <ConnectorHasDecorators Position="SourceTop" OffsetFromShape="0" OffsetFromLine="0">
        <TextDecorator Name="CardinalidadIzquierda" DisplayName="Cardinalidad Izquierda" DefaultText="CardinalidadIzquierda" />
      </ConnectorHasDecorators>
      <ConnectorHasDecorators Position="TargetBottom" OffsetFromShape="0" OffsetFromLine="0">
        <TextDecorator Name="CardinalidadDerecha" DisplayName="Cardinalidad Derecha" DefaultText="CardinalidadDerecha" />
      </ConnectorHasDecorators>
    </Connector>
  </Connectors>
  <XmlSerializationBehavior Name="DSPMPVSCDProyectoIPSSerializationBehavior" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS">
    <ClassData>
      <XmlClassData TypeName="TapizDiagramaClases" MonikerAttributeName="" SerializeId="true" MonikerElementName="tapizDiagramaClasesMoniker" ElementName="tapizDiagramaClases" MonikerTypeName="TapizDiagramaClasesMoniker">
        <DomainClassMoniker Name="TapizDiagramaClases" />
        <ElementData>
          <XmlPropertyData XmlName="solucionDiagrama">
            <DomainPropertyMoniker Name="TapizDiagramaClases/solucionDiagrama" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="clases">
            <DomainRelationshipMoniker Name="TapizDiagramaClasesHasClases" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Atributo" MonikerAttributeName="nombre" SerializeId="true" MonikerElementName="atributoMoniker" ElementName="atributo" MonikerTypeName="AtributoMoniker">
        <DomainClassMoniker Name="Atributo" />
        <ElementData>
          <XmlPropertyData XmlName="nombre" IsMonikerKey="true">
            <DomainPropertyMoniker Name="Atributo/Nombre" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="tipoDato">
            <DomainPropertyMoniker Name="Atributo/TipoDato" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="nombreYTipo" Representation="Ignore">
            <DomainPropertyMoniker Name="Atributo/NombreYTipo" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="DSPMPVSCDProyectoIPSDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="dSPMPVSCDProyectoIPSDiagramMoniker" ElementName="dSPMPVSCDProyectoIPSDiagram" MonikerTypeName="DSPMPVSCDProyectoIPSDiagramMoniker">
        <DiagramMoniker Name="DSPMPVSCDProyectoIPSDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="Operacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="operacionMoniker" ElementName="operacion" MonikerTypeName="OperacionMoniker">
        <DomainClassMoniker Name="Operacion" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="Operacion/Nombre" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="conjuntoDatos">
            <DomainPropertyMoniker Name="Operacion/ConjuntoDatos" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="nombreYParametros">
            <DomainPropertyMoniker Name="Operacion/NombreYParametros" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Clase" MonikerAttributeName="" SerializeId="true" MonikerElementName="claseMoniker" ElementName="clase" MonikerTypeName="ClaseMoniker">
        <DomainClassMoniker Name="Clase" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="Clase/Nombre" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="atributo">
            <DomainRelationshipMoniker Name="ClaseHasAtributo" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="operacioned">
            <DomainRelationshipMoniker Name="ClaseHasOperacion" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="claseHija">
            <DomainRelationshipMoniker Name="ClaseHeredaClase" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="claseAgregada">
            <DomainRelationshipMoniker Name="ClaseAgregaClase" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="claseComponente">
            <DomainRelationshipMoniker Name="ClaseComponeClase" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="claseAsociada">
            <DomainRelationshipMoniker Name="ClaseAsociaClase" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="EstiloOperacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="estiloOperacionMoniker" ElementName="estiloOperacion" MonikerTypeName="EstiloOperacionMoniker">
        <DomainClassMoniker Name="EstiloOperacion" />
        <ElementData>
          <XmlPropertyData XmlName="tipoLetra">
            <DomainPropertyMoniker Name="EstiloOperacion/TipoLetra" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="colorLetra">
            <DomainPropertyMoniker Name="EstiloOperacion/ColorLetra" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ClaseEnriquecida" MonikerAttributeName="" SerializeId="true" MonikerElementName="claseEnriquecidaMoniker" ElementName="claseEnriquecida" MonikerTypeName="ClaseEnriquecidaMoniker">
        <DomainClassMoniker Name="ClaseEnriquecida" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="estiloClases">
            <DomainRelationshipMoniker Name="ClaseEnriquecidaHasEstiloClases" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="estiloAtributo">
            <DomainRelationshipMoniker Name="ClaseEnriquecidaHasEstiloAtributo" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="estiloOperacioned">
            <DomainRelationshipMoniker Name="ClaseEnriquecidaHasEstiloOperacioned" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="TapizDiagramaClasesHasClases" MonikerAttributeName="" SerializeId="true" MonikerElementName="tapizDiagramaClasesHasClasesMoniker" ElementName="tapizDiagramaClasesHasClases" MonikerTypeName="TapizDiagramaClasesHasClasesMoniker">
        <DomainRelationshipMoniker Name="TapizDiagramaClasesHasClases" />
      </XmlClassData>
      <XmlClassData TypeName="ClaseHasAtributo" MonikerAttributeName="" SerializeId="true" MonikerElementName="claseHasAtributoMoniker" ElementName="claseHasAtributo" MonikerTypeName="ClaseHasAtributoMoniker">
        <DomainRelationshipMoniker Name="ClaseHasAtributo" />
      </XmlClassData>
      <XmlClassData TypeName="ClaseHasOperacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="claseHasOperacionMoniker" ElementName="claseHasOperacion" MonikerTypeName="ClaseHasOperacionMoniker">
        <DomainRelationshipMoniker Name="ClaseHasOperacion" />
      </XmlClassData>
      <XmlClassData TypeName="ClaseHeredaClase" MonikerAttributeName="" SerializeId="true" MonikerElementName="claseHeredaClaseMoniker" ElementName="claseHeredaClase" MonikerTypeName="ClaseHeredaClaseMoniker">
        <DomainRelationshipMoniker Name="ClaseHeredaClase" />
        <ElementData>
          <XmlPropertyData XmlName="tipoHerencia">
            <DomainPropertyMoniker Name="ClaseHeredaClase/TipoHerencia" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="EstiloClase" MonikerAttributeName="colorFondo" SerializeId="true" MonikerElementName="estiloClaseMoniker" ElementName="estiloClase" MonikerTypeName="EstiloClaseMoniker">
        <DomainClassMoniker Name="EstiloClase" />
        <ElementData>
          <XmlPropertyData XmlName="colorFondo" IsMonikerKey="true">
            <DomainPropertyMoniker Name="EstiloClase/ColorFondo" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="colorLetra">
            <DomainPropertyMoniker Name="EstiloClase/ColorLetra" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="tipoLetra">
            <DomainPropertyMoniker Name="EstiloClase/TipoLetra" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="alineacion">
            <DomainPropertyMoniker Name="EstiloClase/Alineacion" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="EstiloAtributo" MonikerAttributeName="tipoLetra" SerializeId="true" MonikerElementName="estiloAtributoMoniker" ElementName="estiloAtributo" MonikerTypeName="EstiloAtributoMoniker">
        <DomainClassMoniker Name="EstiloAtributo" />
        <ElementData>
          <XmlPropertyData XmlName="tipoLetra" IsMonikerKey="true">
            <DomainPropertyMoniker Name="EstiloAtributo/TipoLetra" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="colorLetra">
            <DomainPropertyMoniker Name="EstiloAtributo/ColorLetra" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ClaseEnriquecidaHasEstiloClases" MonikerAttributeName="" SerializeId="true" MonikerElementName="claseEnriquecidaHasEstiloClasesMoniker" ElementName="claseEnriquecidaHasEstiloClases" MonikerTypeName="ClaseEnriquecidaHasEstiloClasesMoniker">
        <DomainRelationshipMoniker Name="ClaseEnriquecidaHasEstiloClases" />
      </XmlClassData>
      <XmlClassData TypeName="ClaseEnriquecidaHasEstiloAtributo" MonikerAttributeName="" SerializeId="true" MonikerElementName="claseEnriquecidaHasEstiloAtributoMoniker" ElementName="claseEnriquecidaHasEstiloAtributo" MonikerTypeName="ClaseEnriquecidaHasEstiloAtributoMoniker">
        <DomainRelationshipMoniker Name="ClaseEnriquecidaHasEstiloAtributo" />
      </XmlClassData>
      <XmlClassData TypeName="ClaseEnriquecidaHasEstiloOperacioned" MonikerAttributeName="" SerializeId="true" MonikerElementName="claseEnriquecidaHasEstiloOperacionedMoniker" ElementName="claseEnriquecidaHasEstiloOperacioned" MonikerTypeName="ClaseEnriquecidaHasEstiloOperacionedMoniker">
        <DomainRelationshipMoniker Name="ClaseEnriquecidaHasEstiloOperacioned" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforaClase" MonikerAttributeName="" SerializeId="true" MonikerElementName="metaforaClaseMoniker" ElementName="metaforaClase" MonikerTypeName="MetaforaClaseMoniker">
        <GeometryShapeMoniker Name="MetaforaClase" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforaAtributo" MonikerAttributeName="" SerializeId="true" MonikerElementName="metaforaAtributoMoniker" ElementName="metaforaAtributo" MonikerTypeName="MetaforaAtributoMoniker">
        <GeometryShapeMoniker Name="MetaforaAtributo" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforaOperacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="metaforaOperacionMoniker" ElementName="metaforaOperacion" MonikerTypeName="MetaforaOperacionMoniker">
        <GeometryShapeMoniker Name="MetaforaOperacion" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforaClaseEnriquecida" MonikerAttributeName="" SerializeId="true" MonikerElementName="metaforaClaseEnriquecidaMoniker" ElementName="metaforaClaseEnriquecida" MonikerTypeName="MetaforaClaseEnriquecidaMoniker">
        <GeometryShapeMoniker Name="MetaforaClaseEnriquecida" />
      </XmlClassData>
      <XmlClassData TypeName="ClaseAgregaClase" MonikerAttributeName="" SerializeId="true" MonikerElementName="claseAgregaClaseMoniker" ElementName="claseAgregaClase" MonikerTypeName="ClaseAgregaClaseMoniker">
        <DomainRelationshipMoniker Name="ClaseAgregaClase" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="ClaseAgregaClase/Nombre" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="cardinalidadIzquierda">
            <DomainPropertyMoniker Name="ClaseAgregaClase/CardinalidadIzquierda" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="cardinalidadDerecha">
            <DomainPropertyMoniker Name="ClaseAgregaClase/CardinalidadDerecha" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ClaseComponeClase" MonikerAttributeName="" SerializeId="true" MonikerElementName="claseComponeClaseMoniker" ElementName="claseComponeClase" MonikerTypeName="ClaseComponeClaseMoniker">
        <DomainRelationshipMoniker Name="ClaseComponeClase" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="ClaseComponeClase/Nombre" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="cardinalidadIzquierda">
            <DomainPropertyMoniker Name="ClaseComponeClase/CardinalidadIzquierda" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="cardinalidadDerecha">
            <DomainPropertyMoniker Name="ClaseComponeClase/CardinalidadDerecha" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ClaseAsociaClase" MonikerAttributeName="" SerializeId="true" MonikerElementName="claseAsociaClaseMoniker" ElementName="claseAsociaClase" MonikerTypeName="ClaseAsociaClaseMoniker">
        <DomainRelationshipMoniker Name="ClaseAsociaClase" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="ClaseAsociaClase/Nombre" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="cardinalidadIzquierda">
            <DomainPropertyMoniker Name="ClaseAsociaClase/CardinalidadIzquierda" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="cardinalidadDerecha">
            <DomainPropertyMoniker Name="ClaseAsociaClase/CardinalidadDerecha" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MetaforaHerencia" MonikerAttributeName="" SerializeId="true" MonikerElementName="metaforaHerenciaMoniker" ElementName="metaforaHerencia" MonikerTypeName="MetaforaHerenciaMoniker">
        <ConnectorMoniker Name="MetaforaHerencia" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforaAgregacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="metaforaAgregacionMoniker" ElementName="metaforaAgregacion" MonikerTypeName="MetaforaAgregacionMoniker">
        <ConnectorMoniker Name="MetaforaAgregacion" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforaComposicion" MonikerAttributeName="" SerializeId="true" MonikerElementName="metaforaComposicionMoniker" ElementName="metaforaComposicion" MonikerTypeName="MetaforaComposicionMoniker">
        <ConnectorMoniker Name="MetaforaComposicion" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforaAsociacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="metaforaAsociacionMoniker" ElementName="metaforaAsociacion" MonikerTypeName="MetaforaAsociacionMoniker">
        <ConnectorMoniker Name="MetaforaAsociacion" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforaEstiloClase" MonikerAttributeName="" SerializeId="true" MonikerElementName="metaforaEstiloClaseMoniker" ElementName="metaforaEstiloClase" MonikerTypeName="MetaforaEstiloClaseMoniker">
        <GeometryShapeMoniker Name="MetaforaEstiloClase" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforaEstiloAtributo" MonikerAttributeName="" SerializeId="true" MonikerElementName="metaforaEstiloAtributoMoniker" ElementName="metaforaEstiloAtributo" MonikerTypeName="MetaforaEstiloAtributoMoniker">
        <GeometryShapeMoniker Name="MetaforaEstiloAtributo" />
      </XmlClassData>
      <XmlClassData TypeName="MetaforaEstiloOperacion" MonikerAttributeName="" SerializeId="true" MonikerElementName="metaforaEstiloOperacionMoniker" ElementName="metaforaEstiloOperacion" MonikerTypeName="MetaforaEstiloOperacionMoniker">
        <GeometryShapeMoniker Name="MetaforaEstiloOperacion" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="DSPMPVSCDProyectoIPSExplorer" />
  <ConnectionBuilders>
    <ConnectionBuilder Name="ClaseHeredaClaseBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="ClaseHeredaClase" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Clase" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Clase" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="ClaseAgregaClaseBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="ClaseAgregaClase" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Clase" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Clase" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="ClaseComponeClaseBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="ClaseComponeClase" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Clase" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Clase" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="ClaseAsociaClaseBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="ClaseAsociaClase" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Clase" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Clase" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="34148492-5c1a-47c5-b57f-0357b0cb38c6" Description="Description for UPM_IPS.DSPMPVSCDProyectoIPS.DSPMPVSCDProyectoIPSDiagram" Name="DSPMPVSCDProyectoIPSDiagram" DisplayName="Minimal Language Diagram" Namespace="UPM_IPS.DSPMPVSCDProyectoIPS">
    <Class>
      <DomainClassMoniker Name="TapizDiagramaClases" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="Clase" />
        <ParentElementPath>
          <DomainPath>TapizDiagramaClasesHasClases.TapizDiagramaClases/!TapizDiagramaClases</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaClase/NombreClase" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Clase/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MetaforaClase" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="ClaseEnriquecida" />
        <ParentElementPath>
          <DomainPath>TapizDiagramaClasesHasClases.TapizDiagramaClases/!TapizDiagramaClases</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaClaseEnriquecida/NombreClaseEnriquecida" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Clase/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MetaforaClaseEnriquecida" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="EstiloClase" />
        <ParentElementPath>
          <DomainPath>ClaseEnriquecidaHasEstiloClases.ClaseEnriquecida/!ClaseEnriquecida/TapizDiagramaClasesHasClases.TapizDiagramaClases/!TapizDiagramaClases</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaEstiloClase/TipoLetra" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="EstiloClase/TipoLetra" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaEstiloClase/ColorLetra" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="EstiloClase/ColorLetra" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaEstiloClase/ColorFondo" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="EstiloClase/ColorFondo" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaEstiloClase/Alineacion" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="EstiloClase/Alineacion" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MetaforaEstiloClase" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="EstiloOperacion" />
        <ParentElementPath>
          <DomainPath>ClaseEnriquecidaHasEstiloOperacioned.ClaseEnriquecida/!ClaseEnriquecida/TapizDiagramaClasesHasClases.TapizDiagramaClases/!TapizDiagramaClases</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaEstiloAtributo/TipoLetra" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="EstiloOperacion/TipoLetra" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaEstiloAtributo/ColorLetra" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="EstiloOperacion/ColorLetra" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MetaforaEstiloOperacion" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="EstiloAtributo" />
        <ParentElementPath>
          <DomainPath>ClaseEnriquecidaHasEstiloAtributo.ClaseEnriquecida/!ClaseEnriquecida/TapizDiagramaClasesHasClases.TapizDiagramaClases/!TapizDiagramaClases</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaEstiloAtributo/TipoLetra" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="EstiloAtributo/TipoLetra" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaEstiloAtributo/ColorLetra" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="EstiloAtributo/ColorLetra" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MetaforaEstiloAtributo" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Atributo" />
        <ParentElementPath>
          <DomainPath>ClaseHasAtributo.Clase/!Clase/TapizDiagramaClasesHasClases.TapizDiagramaClases/!TapizDiagramaClases</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaAtributo/NombreYTipo" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Atributo/NombreYTipo" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MetaforaAtributo" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Operacion" />
        <ParentElementPath>
          <DomainPath>ClaseHasOperacion.Clase/!Clase/TapizDiagramaClasesHasClases.TapizDiagramaClases/!TapizDiagramaClases</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaOperacion/NombreYParametros" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Operacion/NombreYParametros" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="MetaforaOperacion" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="MetaforaAsociacion" />
        <DomainRelationshipMoniker Name="ClaseAsociaClase" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaAsociacion/NombreRelacion" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ClaseAsociaClase/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaAsociacion/CardinalidadIzquierda" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ClaseAsociaClase/CardinalidadIzquierda" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaAsociacion/CardinalidadDerecha" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ClaseAsociaClase/CardinalidadDerecha" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="MetaforaComposicion" />
        <DomainRelationshipMoniker Name="ClaseComponeClase" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaComposicion/NombreRelacion" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ClaseComponeClase/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaComposicion/CardinalidadIzquierda" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ClaseComponeClase/CardinalidadIzquierda" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaComposicion/CardinalidadDerecha" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ClaseComponeClase/CardinalidadDerecha" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaAsociacion/NombreRelacion" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ClaseComponeClase/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaAsociacion/CardinalidadIzquierda" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ClaseComponeClase/CardinalidadIzquierda" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaAsociacion/CardinalidadDerecha" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ClaseComponeClase/CardinalidadDerecha" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaAgregacion/NombreRelacion" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ClaseComponeClase/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaAgregacion/CardinalidadIzquierda" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ClaseComponeClase/CardinalidadIzquierda" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaAgregacion/CardinalidadDerecha" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ClaseComponeClase/CardinalidadDerecha" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="MetaforaAgregacion" />
        <DomainRelationshipMoniker Name="ClaseAgregaClase" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaAgregacion/NombreRelacion" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ClaseAgregaClase/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaAgregacion/CardinalidadIzquierda" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ClaseAgregaClase/CardinalidadIzquierda" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaAgregacion/CardinalidadDerecha" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ClaseAgregaClase/CardinalidadDerecha" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaComposicion/NombreRelacion" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ClaseAgregaClase/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaComposicion/CardinalidadIzquierda" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ClaseAgregaClase/CardinalidadIzquierda" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaComposicion/CardinalidadDerecha" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ClaseAgregaClase/CardinalidadDerecha" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="MetaforaHerencia" />
        <DomainRelationshipMoniker Name="ClaseHeredaClase" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="MetaforaHerencia/TipoHerencia" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ClaseHeredaClase/TipoHerencia" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="DSPMPVSCD_DSLProyectoIPS" EditorGuid="de6a7b08-302f-44ee-8522-f6039457d0b6">
    <RootClass>
      <DomainClassMoniker Name="TapizDiagramaClases" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="DSPMPVSCDProyectoIPSSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="DSPMPVSCDProyectoIPS">
      <ElementTool Name="Clase" ToolboxIcon="Resources\Clase.bmp" Caption="Clase" Tooltip="Clase" HelpKeyword="Clase">
        <DomainClassMoniker Name="Clase" />
      </ElementTool>
      <ElementTool Name="Atributo" ToolboxIcon="Resources\Atributo.bmp" Caption="Atributo" Tooltip="Atributo" HelpKeyword="Atributo">
        <DomainClassMoniker Name="Atributo" />
      </ElementTool>
      <ElementTool Name="Operacion" ToolboxIcon="Resources\Operation.bmp" Caption="Operacion" Tooltip="Operacion" HelpKeyword="Operacion">
        <DomainClassMoniker Name="Operacion" />
      </ElementTool>
      <ConnectionTool Name="RelacionAsociacion" ToolboxIcon="Resources\RelaciónAsociación.bmp" Caption="RelacionAsociacion" Tooltip="Relacion Asociacion" HelpKeyword="RelacionAsociacion" SourceCursorIcon="Resources\ConnectorSourceSearch.cur" TargetCursorIcon="Resources\ConnectorTargetSearch.cur">
        <ConnectionBuilderMoniker Name="DSPMPVSCDProyectoIPS/ClaseAsociaClaseBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="RelacionAgregacion" ToolboxIcon="Resources\RelaciónDébil.bmp" Caption="RelacionAgregacion" Tooltip="Relacion Agregacion" HelpKeyword="RelacionAgregacion" SourceCursorIcon="Resources\ConnectorSourceSearch.cur" TargetCursorIcon="Resources\ConnectorTargetSearch.cur">
        <ConnectionBuilderMoniker Name="DSPMPVSCDProyectoIPS/ClaseAgregaClaseBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="RelacionComposicion" ToolboxIcon="Resources\RelaciónFuerte.bmp" Caption="RelacionComposicion" Tooltip="Relacion Composicion" HelpKeyword="RelacionComposicion" SourceCursorIcon="Resources\ConnectorSourceSearch.cur" TargetCursorIcon="Resources\ConnectorTargetSearch.cur">
        <ConnectionBuilderMoniker Name="DSPMPVSCDProyectoIPS/ClaseComponeClaseBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="RelacionHerencia" ToolboxIcon="Resources\RelaciónHerenciaIcono.bmp" Caption="RelacionHerencia" Tooltip="Relacion Herencia" HelpKeyword="RelacionHerencia" SourceCursorIcon="Resources\ConnectorSourceSearch.cur" TargetCursorIcon="Resources\ConnectorTargetSearch.cur">
        <ConnectionBuilderMoniker Name="DSPMPVSCDProyectoIPS/ClaseHeredaClaseBuilder" />
      </ConnectionTool>
      <ElementTool Name="ClaseEnriquecida" ToolboxIcon="Resources\ClaseEnriquecida.bmp" Caption="ClaseEnriquecida" Tooltip="Clase Enriquecida" HelpKeyword="ClaseEnriquecida">
        <DomainClassMoniker Name="ClaseEnriquecida" />
      </ElementTool>
      <ElementTool Name="EstiloClase" ToolboxIcon="Resources\EstiloClase.bmp" Caption="EstiloClase" Tooltip="Estilo Clase" HelpKeyword="EstiloClase">
        <DomainClassMoniker Name="EstiloClase" />
      </ElementTool>
      <ElementTool Name="EstiloAtributo" ToolboxIcon="Resources\EstiloAtributo.bmp" Caption="EstiloAtributo" Tooltip="Estilo Atributo" HelpKeyword="EstiloAtributo">
        <DomainClassMoniker Name="EstiloAtributo" />
      </ElementTool>
      <ElementTool Name="EstiloOperacion" ToolboxIcon="Resources\EstiloOperacion.bmp" Caption="EstiloOperacion" Tooltip="Estilo Operacion" HelpKeyword="EstiloOperacion">
        <DomainClassMoniker Name="EstiloOperacion" />
      </ElementTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="DSPMPVSCDProyectoIPSDiagram" />
  </Designer>
  <Explorer ExplorerGuid="99600f56-255a-49a5-b9c0-21c1cc64f3b2" Title="DSPMPVSCDProyectoIPS Explorer">
    <ExplorerBehaviorMoniker Name="DSPMPVSCDProyectoIPS/DSPMPVSCDProyectoIPSExplorer" />
  </Explorer>
</Dsl>