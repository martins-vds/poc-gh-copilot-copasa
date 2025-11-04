*"* Report Z_HELLO_WORLD_DEMO
*"* Demonstration program using the ZCL_HELLO_WORLD class
*"* Shows ABAP program structure and class usage
*"*----------------------------------------------------------------------*

REPORT z_hello_world_demo.

" Data declarations following naming conventions
DATA: go_hello_world TYPE REF TO zcl_hello_world,
      gv_greeting    TYPE string,
      gt_greetings   TYPE TABLE OF zcl_hello_world=>ty_greeting,
      gv_language    TYPE string.

" Selection screen for user input
SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
PARAMETERS: p_lang TYPE string DEFAULT 'EN' OBLIGATORY.
SELECTION-SCREEN END OF BLOCK b1.

" Text symbols
" TEXT-001: Language Selection

START-OF-SELECTION.
  PERFORM main_processing.

END-OF-SELECTION.
  " Display results
  PERFORM display_results.

*----------------------------------------------------------------------*
*       FORM main_processing
*----------------------------------------------------------------------*
FORM main_processing.
  
  " Create instance of our class
  CREATE OBJECT go_hello_world.
  
  " Get greeting for selected language
  TRY.
      gv_greeting = go_hello_world->get_greeting( p_lang ).
      
    CATCH zcx_custom_exception INTO DATA(lx_error).
      " Handle exception gracefully
      MESSAGE lx_error->get_text( ) TYPE 'E'.
      RETURN.
  ENDTRY.
  
  " Get all available greetings
  gt_greetings = go_hello_world->get_all_greetings( ).
  
ENDFORM.

*----------------------------------------------------------------------*
*       FORM display_results
*----------------------------------------------------------------------*
FORM display_results.
  
  " Display greeting for selected language
  WRITE: / 'Selected Language:', p_lang,
         / 'Greeting:', gv_greeting.
  
  SKIP 2.
  
  " Display all available greetings
  WRITE: / 'All Available Greetings:'.
  WRITE: / '========================'.
  
  LOOP AT gt_greetings INTO DATA(ls_greeting).
    WRITE: / ls_greeting-language, '-', ls_greeting-message.
  ENDLOOP.
  
ENDFORM.