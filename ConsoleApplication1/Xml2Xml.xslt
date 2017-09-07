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
  <xsl:variable name="str" select="//ns:ProcessServiceAppointment/ns:ProcessServiceAppointmentDataArea
                            /ns:ServiceAppointment/ns:ServiceAppointmentHeader/ns:OwnerParty/ns:SpecifiedPerson
                              /ns:TelephoneCommunication/ns:UseCode"></xsl:variable>
  <xsl:variable name="x" select="//ns:ProcessServiceAppointment/ns:ApplicationArea/ns:Sender"/>
  <xsl:variable name="y" select ="//ns:ProcessServiceAppointment/ns:ApplicationArea"/>
  <xsl:variable name="z" select ="//ns:ProcessServiceAppointment/ns:ProcessServiceAppointmentDataArea/ns:ServiceAppointment/ns:ServiceAppointmentHeader"/>
  <xsl:variable name="a" select ="//ns:ProcessServiceAppointment/ns:ProcessServiceAppointmentDataArea/ns:ServiceAppointment/ns:ServiceAppointmentHeader/ns:DocumentIdentificationGroup/ns:DocumentIdentification"/>
  <xsl:variable name="b" select ="//ns:ProcessServiceAppointment/ns:ProcessServiceAppointmentDataArea/ns:ServiceAppointment/ns:ServiceAppointmentHeader/ns:OwnerParty"/>
  <xsl:variable name="c" select ="//ns:ProcessServiceAppointment/ns:ProcessServiceAppointmentDataArea/ns:ServiceAppointment/ns:ServiceAppointmentHeader/ns:OwnerParty/ns:SpecifiedPerson"/>
  <xsl:variable name="d" select ="//ns:ProcessServiceAppointment/ns:ProcessServiceAppointmentDataArea/ns:ServiceAppointment/ns:ServiceAppointmentHeader/ns:OwnerParty/ns:SpecifiedPerson/ns:ResidenceAddress"/>
  <xsl:variable name="e" select ="//ns:ProcessServiceAppointment/ns:ProcessServiceAppointmentDataArea/ns:ServiceAppointment/ns:ServiceAppointmentHeader/ns:OwnerParty/ns:SpecifiedPerson/ns:TelephoneCommunication"/>
  <xsl:variable name="f" select ="//ns:ProcessServiceAppointment/ns:ProcessServiceAppointmentDataArea/ns:ServiceAppointment/ns:ServiceAppointmentHeader/ns:OwnerParty/ns:SpecifiedPerson/ns:URICommunication"/>
  <xsl:variable name="g" select ="//ns:ProcessServiceAppointment/ns:ProcessServiceAppointmentDataArea/ns:ServiceAppointment/ns:ServiceAppointmentHeader/ns:ServiceAppointmentVehicleLineItem"/>
  <xsl:variable name="h" select ="//ns:ProcessServiceAppointment/ns:ProcessServiceAppointmentDataArea/ns:ServiceAppointment/ns:ServiceAppointmentHeader/ns:ServiceAppointmentVehicleLineItem/ns:Vehicle"/>
  <xsl:variable name="i" select ="//ns:ProcessServiceAppointment/ns:ProcessServiceAppointmentDataArea/ns:ServiceAppointment/ns:ServiceAppointmentDetail/ns:Appointment"/>
  <xsl:variable name="j" select ="//ns:ProcessServiceAppointment/ns:ProcessServiceAppointmentDataArea/ns:ServiceAppointment/ns:ServiceAppointmentDetail/ns:Appointment/ns:RequestedService"/>
  <xsl:variable name="k" select ="//ns:ProcessServiceAppointment/ns:ProcessServiceAppointmentDataArea/ns:ServiceAppointment/ns:ServiceAppointmentDetail/ns:Appointment/ns:RequestedService/ns:ServiceLaborScheduling"/>

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
              <xsl:value-of select="$z/ns:DocumentDateTime"/>
            </DocumentDateTime>
            <DocumentIdentificationGroup>
              <DocumentID>
                <xsl:value-of select="$a/ns:DocumentID"/>
              </DocumentID>
            </DocumentIdentificationGroup>
            <OwnerParty>
              <DealerManagementSystemID>
                <xsl:value-of select="$b/ns:DealerManagementSystemID"/>
              </DealerManagementSystemID>
              <SpecifiedPerson>
                <GivenName>
                  <xsl:value-of select="$c/ns:GivenName"/>
                </GivenName>
                <MiddleName>
                  <xsl:value-of select="$c/ns:MiddleName"/>
                </MiddleName>
                <FamilyName>
                  <xsl:value-of select="$c/ns:FamilyName"/>
                </FamilyName>
                <ResidenceAddress>
                  <AddressType>
                    <xsl:value-of select="$d/ns:AddressType"/>
                  </AddressType>
                  <LineOne>
                    <xsl:value-of select="$d/ns:LineOne"/>
                  </LineOne>
                  <LineTwo>
                    <xsl:value-of select="$d/ns:LineTwo"/>
                  </LineTwo>
                  <CityName>
                    <xsl:value-of select="$d/ns:CityName"/>
                  </CityName>
                  <CountryID>
                    <xsl:value-of select="$d/ns:CountryID"/>
                  </CountryID>
                  <Postcode>
                    <xsl:value-of select="$d/ns:Postcode"/>
                  </Postcode>
                  <StateOrProvinceCountrySub-DivisionID>
                    <xsl:value-of select="$d/ns:StateOrProvinceCountrySub-DivisionID"/>
                  </StateOrProvinceCountrySub-DivisionID>
                </ResidenceAddress>

                <xsl:for-each select="//ns:ProcessServiceAppointment/ns:ProcessServiceAppointmentDataArea
                            /ns:ServiceAppointment/ns:ServiceAppointmentHeader/ns:OwnerParty/ns:SpecifiedPerson/ns:TelephoneCommunication">
                  <xsl:variable name="str" select="//ns:ProcessServiceAppointment/ns:ProcessServiceAppointmentDataArea
                            /ns:ServiceAppointment/ns:ServiceAppointmentHeader/ns:OwnerParty/ns:SpecifiedPerson
                              /ns:TelephoneCommunication/ns:UseCode"></xsl:variable>
                  <TelephoneCommunication>
                    <xsl:attribute name="name">
                      <xsl:value-of select="substring(ns:UseCode/text(),1,1)"/>
                    </xsl:attribute>
                    <ChannelCode>
                      <xsl:value-of select="ns:ChannelCode"/>
                    </ChannelCode>
                    <LocalNumber>
                      <xsl:value-of select="ns:LocalNumber"/>
                    </LocalNumber>


                  </TelephoneCommunication>
                </xsl:for-each>
                <URICommunication>
                  <URIID>
                    <xsl:value-of select="$f/ns:URIID"/>
                  </URIID>
                  <ChannelCode>
                    <xsl:value-of select="$f/ns:ChannelCode"/>
                  </ChannelCode>
                </URICommunication>
              </SpecifiedPerson>
            </OwnerParty>
            <ServiceAppointmentLineItem>
              <Vehicle>
                <ModelYear>
                  <xsl:value-of select="$h/ns:ModelYear"/>
                </ModelYear>
                <ModelDescription>
                  <xsl:value-of select="$h/ns:ModelDescription"/>
                </ModelDescription>
                <MakeString>
                  <xsl:value-of select="$h/ns:MakeString"/>
                </MakeString>
                <VehicleID>
                  <xsl:value-of select="$h/ns:VehicleID"/>
                </VehicleID>
              </Vehicle>
              <InDistanceMeasure>
                <xsl:value-of select="$g/ns:InDistanceMeasure"/>
              </InDistanceMeasure>
            </ServiceAppointmentLineItem>
          </ServiceAppointmentHeader>
          <ServiceAppointmentDetail>
            <Appointment>
              <RequestedService>
                <ServiceLaborScheduling>
                  <JobNumberString>
                    <xsl:value-of select="$j/ns:JobNumberString"/>
                  </JobNumberString>
                  <LaborOperationID>
                    <xsl:value-of select="$k/ns:LaborOperationID"/>
                  </LaborOperationID>
                  <LaborOperationIdTypeCode>
                    <xsl:value-of select="$k/ns:LaborOperationIdTypeCode"/>
                  </LaborOperationIdTypeCode>
                  <LaborOperationDescription>
                    <xsl:value-of select="$k/ns:LaborOperationDescription"/>
                  </LaborOperationDescription>
                </ServiceLaborScheduling>
              </RequestedService>
              <AppointmentDateTime>
                <xsl:value-of select="$i/ns:AppointmentDateTime"/>
              </AppointmentDateTime>
              <AppointmentNotes>
                <xsl:value-of select="$i/ns:AppointmentNotes"/>
              </AppointmentNotes>
            </Appointment>
          </ServiceAppointmentDetail>
        </ServiceAppointment>
      </ProcessServiceAppointmentDataArea>
    </ProcessServiceAppointment>
  </xsl:template>
</xsl:stylesheet>


