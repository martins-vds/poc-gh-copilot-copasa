*"* Unit Test Class for ZCL_HELLO_WORLD
*"* Following ABAP Unit testing best practices
*"* Tests both positive and negative scenarios
*"*----------------------------------------------------------------------*

CLASS ltc_hello_world_test DEFINITION FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    DATA: mo_cut TYPE REF TO zcl_hello_world. " Class Under Test

    METHODS: 
      setup FOR TESTING,
      teardown FOR TESTING,
      
      " Test methods following Given-When-Then pattern
      test_get_greeting_english FOR TESTING,
      test_get_greeting_portuguese FOR TESTING,
      test_get_greeting_invalid_language FOR TESTING,
      test_get_greeting_empty_input FOR TESTING,
      test_get_all_greetings FOR TESTING.

ENDCLASS.

CLASS ltc_hello_world_test IMPLEMENTATION.

  METHOD setup.
    " Given: Create instance of class under test
    CREATE OBJECT mo_cut.
  ENDMETHOD.

  METHOD teardown.
    " Cleanup: Clear object reference
    CLEAR mo_cut.
  ENDMETHOD.

  METHOD test_get_greeting_english.
    " Given: A valid English language code
    DATA(lv_language) = 'EN'.
    
    " When: Getting greeting for English
    DATA(lv_result) = mo_cut->get_greeting( lv_language ).
    
    " Then: Should return English greeting
    cl_abap_unit_assert=>assert_equals(
      act = lv_result
      exp = 'Hello, World!'
      msg = 'English greeting should be returned'
    ).
  ENDMETHOD.

  METHOD test_get_greeting_portuguese.
    " Given: A valid Portuguese language code
    DATA(lv_language) = 'PT'.
    
    " When: Getting greeting for Portuguese
    DATA(lv_result) = mo_cut->get_greeting( lv_language ).
    
    " Then: Should return Portuguese greeting
    cl_abap_unit_assert=>assert_equals(
      act = lv_result
      exp = 'Olá, Mundo!'
      msg = 'Portuguese greeting should be returned'
    ).
  ENDMETHOD.

  METHOD test_get_greeting_invalid_language.
    " Given: An invalid language code
    DATA(lv_language) = 'XX'.
    
    " When: Getting greeting for invalid language
    DATA(lv_result) = mo_cut->get_greeting( lv_language ).
    
    " Then: Should return default English greeting
    cl_abap_unit_assert=>assert_equals(
      act = lv_result
      exp = 'Hello, World!'
      msg = 'Should return default greeting for invalid language'
    ).
  ENDMETHOD.

  METHOD test_get_greeting_empty_input.
    " Given: Empty language input
    DATA(lv_language) = ''.
    
    " When: Getting greeting with empty input
    " Then: Should raise exception
    TRY.
        mo_cut->get_greeting( lv_language ).
        cl_abap_unit_assert=>fail( 'Exception should have been raised for empty input' ).
      CATCH zcx_custom_exception.
        " Expected exception - test passes
    ENDTRY.
  ENDMETHOD.

  METHOD test_get_all_greetings.
    " When: Getting all greetings
    DATA(lt_greetings) = mo_cut->get_all_greetings( ).
    
    " Then: Should return table with all greetings
    cl_abap_unit_assert=>assert_not_initial(
      act = lt_greetings
      msg = 'Greetings table should not be empty'
    ).
    
    " Verify we have the expected number of greetings
    cl_abap_unit_assert=>assert_equals(
      act = lines( lt_greetings )
      exp = 5
      msg = 'Should have 5 greeting entries'
    ).
  ENDMETHOD.

ENDCLASS.