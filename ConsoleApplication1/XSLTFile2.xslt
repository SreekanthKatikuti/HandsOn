<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
              xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
              xmlns:msxsl="urn:schemas-microsoft-com:xslt"
              exclude-result-prefixes="xsl msxsl soap xsi ns1 cs ns"
              xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
              xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
              xmlns:ns1="http://www.openapplications.org/oagis/9"
              xmlns:cs="urn:cs"
              xmlns:ns="http://www.starstandard.org/STAR/5">

  <xsl:output method="xml" indent="yes"/>
  <xsl:variable name="x" select="//ns:ProcessServiceAppointment/ns:ApplicationArea/ns:Sender"/>
  <xsl:variable name="y" select ="//ns:ProcessServiceAppointment/ns:ApplicationArea"/>


  <xsl:template match="/">
    <xsl:call-template name="ns:ProcessSA">

    </xsl:call-template>


  </xsl:template>


  <xsl:template name="ns:ProcessSA">
    <ProcessServiceAppointment>
    <ApplicationArea>
      <Sender>
        <ComponentID>
          <xsl:value-of select="$x/ns:ComponentID"/>
        </ComponentID>
        <TaskID>
          <xsl:value-of select="$x/ns:TaskID"/>
        </TaskID>
        <ConfirmationCode>
          <xsl:value-of select="$x/ns:ConfirmationCode"/>
        </ConfirmationCode>
        <CreatorNameCode>
          <xsl:value-of select="$x/ns:CreatorNameCode"/>
        </CreatorNameCode>
        <SenderNameCode>
          <xsl:value-of select="$x/ns:SenderNameCode"/>
        </SenderNameCode>
          
          <DealerNumberID>
      <xsl:value-of select="$x/ns:DealerNumberID"/>
</DealerNumberID>
    <StoreNumber>
      <xsl:value-of select="$x/ns:StoreNumber"/>
    </StoreNumber>
    <AreaNumber>
      <xsl:value-of select="$x/ns:AreaNumber"/>
    </AreaNumber>
    <DealerCountryCode>
      <xsl:value-of select="$x/ns:DealerCountryCode"/>
    </DealerCountryCode>
    </Sender>
      <CreationDateTime>
        <xsl:value-of select="$y/ns:CreationDateTime"/>
      </CreationDateTime>
      <BODID>
        <xsl:value-of select="$y/ns:BODID"/>
      </BODID>
    </ApplicationArea>
    <ProcessServiceAppointmentDataArea>
    <Process>
      <acknowledgeCode acknowledgeCode="Always"/>
      <ActionCriteria>
        <ActionExpression expressionLanguage="" actionCode="Add"/>
        <ChangeStatus>
          <StateChange>
            <FromStateCode/>
            <ToStateCode/>
            <ChangeDateTime/>
          </StateChange>
        </ChangeStatus>
      </ActionCriteria>
    </Process>
      <ServiceAppointment>
        <ServiceAppointmentHeader>
          <DocumentDateTime>
          <!--<xsl:value-of select="$z/ns:DocumentDateTime"/>-->
          </DocumentDateTime>
        </ServiceAppointmentHeader>
      </ServiceAppointment>
  </ProcessServiceAppointmentDataArea>
      </ProcessServiceAppointment>
  </xsl:template>
  
  </xsl:stylesheet>