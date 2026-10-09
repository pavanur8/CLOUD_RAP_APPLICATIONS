CLASS lhc_EmployeeTableAll DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_features FOR INSTANCE FEATURES
      keys REQUEST requested_features FOR EmployeeTableAll RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      REQUEST requested_authorizations FOR EmployeeTableAll RESULT result.

    METHODS Edit FOR MODIFY
       keys FOR ACTION EmployeeTableAll~Edit.

    METHODS SelectCustomizingTransptReq FOR MODIFY
       keys FOR ACTION EmployeeTableAll~SelectCustomizingTransptReq RESULT result.

    METHODS ValidateTransportRequest FOR VALIDATE ON SAVE
       keys FOR EmployeeTableAll~ValidateTransportRequest.

ENDCLASS.

CLASS lhc_EmployeeTableAll IMPLEMENTATION.

  METHOD get_instance_features.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD Edit.
  ENDMETHOD.

  METHOD SelectCustomizingTransptReq.
  ENDMETHOD.

  METHOD ValidateTransportRequest.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_EmployeeTable DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_features FOR INSTANCE FEATURES
      keys REQUEST requested_features FOR EmployeeTable RESULT result.

    METHODS get_global_features FOR GLOBAL FEATURES
      REQUEST requested_features FOR EmployeeTable RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      REQUEST requested_authorizations FOR EmployeeTable RESULT result.

    METHODS Deprecate FOR MODIFY
       keys FOR ACTION EmployeeTable~Deprecate RESULT result.

    METHODS Invalidate FOR MODIFY
       keys FOR ACTION EmployeeTable~Invalidate RESULT result.

    METHODS ValidateTransportRequest FOR VALIDATE ON SAVE
       keys FOR EmployeeTable~ValidateTransportRequest.

ENDCLASS.

CLASS lhc_EmployeeTable IMPLEMENTATION.

  METHOD get_instance_features.
  ENDMETHOD.

  METHOD get_global_features.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD Deprecate.
  ENDMETHOD.

  METHOD Invalidate.
  ENDMETHOD.

  METHOD ValidateTransportRequest.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZI_EMPTABLE DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS save_modified REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZI_EMPTABLE IMPLEMENTATION.

  METHOD save_modified.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
