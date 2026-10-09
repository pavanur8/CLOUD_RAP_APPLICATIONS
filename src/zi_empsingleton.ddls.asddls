@EndUserText.label: 'Employee Table'
@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
define view entity ZI_Empsingleton
  as select from ZPD_DT_EM
  association to parent ZI_EmpTable as _EmployeeTableAll on $projection.SingletonID = _EmployeeTableAll.SingletonID
  association [0..*] to I_ConfignDeprecationCodeText as _ConfignDeprecationCodeText on $projection.ConfigDeprecationCode = _ConfignDeprecationCodeText.ConfigurationDeprecationCode
{
  key EMPLOYEE_ID as EmployeeId,
  FIRST_NAME as FirstName,
  LAST_NAME as LastName,
  DEPARTMENT as Department,
  JOINING_DATE as JoiningDate,
  IS_ACTIVE as IsActive,
  CHANGED_BY as ChangedBy,
  @ObjectModel.text.association: '_ConfignDeprecationCodeText'
  @Consumption.valueHelpDefinition: [ {
    entity: {
      name: 'I_ConfignDeprecationCode', 
      element: 'ConfigurationDeprecationCode'
    }, 
    useForValidation: true
  } ]
  CONFIGDEPRECATIONCODE as ConfigDeprecationCode,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  @Consumption.hidden: true
  LOCAL_LAST_CHANGED_AT as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  CHANGED_AT as ChangedAt,
  @Consumption.hidden: true
  1 as SingletonID,
  _EmployeeTableAll,
  case when CONFIGDEPRECATIONCODE = 'W' then 2 when CONFIGDEPRECATIONCODE = 'E' then 1 else 3 end as ConfigDeprecationCode_Critlty,
  _ConfignDeprecationCodeText
}
