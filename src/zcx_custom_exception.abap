*"* Custom Exception Class ZCX_CUSTOM_EXCEPTION
*"* Following ABAP exception handling best practices
*"* Used for structured error handling in business logic
*"*----------------------------------------------------------------------*

CLASS zcx_custom_exception DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    
    " Define exception text IDs for different error scenarios
    CONSTANTS: 
      BEGIN OF invalid_language,
        msgid TYPE symsgid VALUE 'Z_MESSAGES',
        msgno TYPE symsgno VALUE '001',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF invalid_language,
      
      BEGIN OF processing_error,
        msgid TYPE symsgid VALUE 'Z_MESSAGES',
        msgno TYPE symsgno VALUE '002',
        attr1 TYPE scx_attrname VALUE 'ERROR_DETAILS',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF processing_error.

    " Attributes for error details
    DATA: error_details TYPE string READ-ONLY.

    " Constructor
    METHODS: constructor
      IMPORTING
        textid        LIKE if_t100_message=>t100key OPTIONAL
        previous      LIKE previous OPTIONAL
        error_details TYPE string OPTIONAL.

ENDCLASS.

CLASS zcx_custom_exception IMPLEMENTATION.

  METHOD constructor.
    CALL METHOD super->constructor
      EXPORTING
        textid   = textid
        previous = previous.
    
    " Store error details for debugging
    me->error_details = error_details.
  ENDMETHOD.

ENDCLASS.