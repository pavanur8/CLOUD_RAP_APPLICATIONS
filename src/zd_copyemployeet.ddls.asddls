@EndUserText.label: 'Copy Employee Table'
define abstract entity ZD_CopyEmployeeT
{
  @EndUserText.label: 'New Employee ID'
  @UI.defaultValue: #( 'ELEMENT_OF_REFERENCED_ENTITY: EmployeeId' )
  EmployeeId : ZPD_DE_EMP;
}
