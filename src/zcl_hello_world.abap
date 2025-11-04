*"* Class ZCL_HELLO_WORLD - Example ABAP Class
*"* This is a simple example class to demonstrate ABAP development
*"* following the guidelines in this workspace
*"*
*"* Created: November 2025
*"* Purpose: Introduction to ABAP development with GitHub Copilot
*"*----------------------------------------------------------------------*

CLASS zcl_hello_world DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    TYPES: BEGIN OF ty_greeting,
             language TYPE string,
             message  TYPE string,
           END OF ty_greeting.

    METHODS: 
      constructor,
      get_greeting 
        IMPORTING iv_language TYPE string DEFAULT 'EN'
        RETURNING VALUE(rv_greeting) TYPE string
        RAISING   zcx_custom_exception,
      
      get_all_greetings
        RETURNING VALUE(rt_greetings) TYPE TABLE OF ty_greeting.

  PRIVATE SECTION.
    DATA: mt_greetings TYPE TABLE OF ty_greeting.
    
    METHODS: initialize_greetings.

ENDCLASS.

CLASS zcl_hello_world IMPLEMENTATION.

  METHOD constructor.
    " Initialize the class with predefined greetings
    initialize_greetings( ).
  ENDMETHOD.

  METHOD initialize_greetings.
    " Following Clean ABAP principles: clear, descriptive method
    CLEAR mt_greetings.
    
    " Initialize greeting messages in different languages
    mt_greetings = VALUE #(
      ( language = 'EN' message = 'Hello, World!' )
      ( language = 'PT' message = 'Olá, Mundo!' )
      ( language = 'ES' message = 'Hola, Mundo!' )
      ( language = 'FR' message = 'Bonjour, le Monde!' )
      ( language = 'DE' message = 'Hallo, Welt!' )
    ).
  ENDMETHOD.

  METHOD get_greeting.
    " Input validation - security best practice
    IF iv_language IS INITIAL.
      " Proper exception handling with custom exception
      RAISE EXCEPTION TYPE zcx_custom_exception
        EXPORTING
          textid = zcx_custom_exception=>invalid_language.
    ENDIF.

    " Efficient internal table lookup
    READ TABLE mt_greetings INTO DATA(ls_greeting)
      WITH KEY language = to_upper( iv_language ).
    
    IF sy-subrc = 0.
      rv_greeting = ls_greeting-message.
    ELSE.
      " Default to English if language not found
      rv_greeting = 'Hello, World!'.
    ENDIF.
  ENDMETHOD.

  METHOD get_all_greetings.
    " Return copy of internal table - avoid direct access
    rt_greetings = mt_greetings.
  ENDMETHOD.

ENDCLASS.