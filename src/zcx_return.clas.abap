CLASS zcx_return DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES:
            "7.40: Deactivated
            "INTERFACES if_t100_message .
            "INTERFACES if_t100_dyn_msg .
            "ALIASES msgty
            "  FOR if_t100_dyn_msg~msgty .
*
      gtt_bapireturn_t TYPE STANDARD TABLE OF bapireturn WITH DEFAULT KEY .
    TYPES:
      gtt_bdc_messages  TYPE STANDARD TABLE OF bdcmsgcoll WITH DEFAULT KEY .

    METHODS constructor
      IMPORTING
        !textid LIKE textid OPTIONAL
        !previous LIKE previous OPTIONAL
        !gt_return TYPE bapiret2_t OPTIONAL .
    METHODS has_messages
      RETURNING
        VALUE(rv_has_messages) TYPE abap_bool .
    METHODS get_bapiret2_struc
      RETURNING
        VALUE(rs_bapiret2) TYPE bapiret2 .
    METHODS get_bapiret2_table
      RETURNING
        VALUE(rt_bapiret2) TYPE bapiret2_t .
    METHODS add_system_message
      IMPORTING
        !iv_field_name TYPE bapi_fld OPTIONAL .
    METHODS add_message_and_text_var
      IMPORTING
        !iv_type TYPE bapi_mtype
        !iv_id TYPE symsgid
        !iv_number TYPE symsgno
        !iv_text_variable TYPE char200 .
    METHODS add_exception_object
      IMPORTING
        !ir_exception_object TYPE REF TO cx_root .
    METHODS add_bapireturn_struc
      IMPORTING
        !is_bapireturn TYPE bapireturn .
    METHODS add_bapireturn_table
      IMPORTING
        !it_return TYPE gtt_bapireturn_t .
    METHODS add_bapiret1_struc
      IMPORTING
        !is_return TYPE bapiret1 .
    METHODS add_bapiret1_table
      IMPORTING
        !it_return TYPE bapiret1_tab .
    METHODS add_bapiret2_struc
      IMPORTING
        !is_return TYPE bapiret2 .
    METHODS add_bapiret2_table
      IMPORTING
        !it_return TYPE bapiret2_t .
    METHODS add_bdc_table
      IMPORTING
        !it_bdc_messages TYPE gtt_bdc_messages .
    "7.40 Added
    METHODS add_text
      IMPORTING
        !iv_type TYPE bapi_mtype DEFAULT 'E'
        !iv_message TYPE bapi_msg
        !iv_variable_1 TYPE symsgv
        !iv_variable_2 TYPE symsgv
        !iv_variable_3 TYPE symsgv
        !iv_variable_4 TYPE symsgv .

    METHODS if_message~get_text
      REDEFINITION .
PROTECTED SECTION.

  DATA gt_return TYPE bapiret2_t .

  METHODS map_text_var_to_bapiret2
    IMPORTING
      !iv_type           TYPE bapi_mtype
      !iv_id             TYPE symsgid
      !iv_number         TYPE symsgno
      !iv_text           TYPE char200
    RETURNING
      VALUE(rs_bapiret2) TYPE bapiret2 .
  METHODS map_bapireturn_to_bapiret2
    IMPORTING
      !is_bapireturn     TYPE bapireturn
    RETURNING
      VALUE(rs_bapiret2) TYPE bapiret2 .
  METHODS map_bapiret1_to_bapiret2
    IMPORTING
      !is_bapireturn     TYPE bapiret1
    RETURNING
      VALUE(rs_bapiret2) TYPE bapiret2 .
  CLASS-METHODS map_bdc_to_bapiret2
    IMPORTING
      !is_bdc_message    TYPE bdcmsgcoll
    RETURNING
      VALUE(rs_bapiret2) TYPE bapiret2 .
PRIVATE SECTION.
ENDCLASS.



CLASS ZCX_RETURN IMPLEMENTATION.


  method ADD_BAPIRET1_STRUC.
  endmethod.


  method ADD_BAPIRET1_TABLE.
  endmethod.


  method ADD_BAPIRET2_STRUC.
  endmethod.


  method ADD_BAPIRET2_TABLE.
  endmethod.


  method ADD_BAPIRETURN_STRUC.
  endmethod.


  method ADD_BAPIRETURN_TABLE.
  endmethod.


  method ADD_BDC_TABLE.
  endmethod.


  method ADD_EXCEPTION_OBJECT.
  endmethod.


  method ADD_MESSAGE_AND_TEXT_VAR.
  endmethod.


  method ADD_SYSTEM_MESSAGE.
  endmethod.


  method ADD_TEXT.
  endmethod.


  method CONSTRUCTOR.
CALL METHOD SUPER->CONSTRUCTOR
EXPORTING
TEXTID = TEXTID
PREVIOUS = PREVIOUS
.
  endmethod.


  method GET_BAPIRET2_STRUC.
  endmethod.


  method GET_BAPIRET2_TABLE.
  endmethod.


  METHOD has_messages.
  ENDMETHOD.


  method IF_MESSAGE~GET_TEXT.
*CALL METHOD SUPER->IF_MESSAGE~GET_TEXT
*  RECEIVING
*    RESULT =
*    .
  endmethod.


  method MAP_BAPIRET1_TO_BAPIRET2.
  endmethod.


  method MAP_BAPIRETURN_TO_BAPIRET2.
  endmethod.


  method MAP_BDC_TO_BAPIRET2.
  endmethod.


  method MAP_TEXT_VAR_TO_BAPIRET2.
  endmethod.
ENDCLASS.
