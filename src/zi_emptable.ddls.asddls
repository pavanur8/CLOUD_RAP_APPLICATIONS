@EndUserText.label: 'Employee Table Singleton'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Semantics.valueRange.maximum: '1'
@ObjectModel.semanticKey: [ 'SingletonID' ]
@UI: {
  headerInfo: {
    typeName: 'EmployeeTableAll'
  }
}
define root view entity ZI_EmpTable
  as select from    I_Language
    left outer join zpd_dt_em on 0 = 0
  association [0..*] to I_ABAPTransportRequestText as _ABAPTransportRequestText on $projection.TransportRequestID = _ABAPTransportRequestText.TransportRequestID
  composition [0..*] of ZI_Empsingleton            as _EmployeeTable
{
      @UI.facet: [ {
        id: 'EmployeeTable',
        purpose: #STANDARD,
        type: #LINEITEM_REFERENCE,
        label: 'Employee Table',
        position: 1 ,
        targetElement: '_EmployeeTable'
      } ]
      @UI.lineItem: [ {
        position: 1
      } ]
  key 1                           as SingletonID,
      _EmployeeTable,
      @UI.hidden: true
      max( zpd_dt_em.changed_at ) as LastChangedAtMax,
      @ObjectModel.text.association: '_ABAPTransportRequestText'
      @UI.identification: [ {

      position: 2 ,
      type: #WITH_INTENT_BASED_NAVIGATION,
      semanticObjectAction: 'manage'

      } ]

      @Consumption.semanticObject: 'CustomizingTransport'
      cast( '' as sxco_transport) as TransportRequestID,
      _ABAPTransportRequestText
}
where
  I_Language.Language = $session.system_language
