---
mode: 'agent'
model: Claude Sonnet 4
tools: ['codebase', 'edit', 'search']
description: 'Generate comprehensive ABAP Unit test classes'
---

# Write ABAP Unit Tests

Your goal is to create comprehensive ABAP Unit test classes for the specified component following ABAP testing best practices.

Ask for the testing requirements if not provided:

## Testing Scope Definition

**Component to Test:**
- Class, method, or function module name
- Public interface and methods to test
- Business logic and critical functionality
- Error conditions and edge cases

**Test Requirements:**
- Functional test scenarios
- Security and authorization testing
- Performance considerations
- Integration test requirements

## Test Implementation Guidelines

### Test Class Structure
- Use LTC_ prefix for local test class names
- Implement FOR TESTING flag in class definition
- Create proper setup() and teardown() methods
- Organize tests logically by functionality

### Test Method Design
- Use descriptive method names that explain what is being tested
- Follow Given-When-Then pattern for test structure
- Test one specific behavior per method
- Include both positive and negative test scenarios

### Test Data Management
- Create isolated test data that doesn't depend on system state
- Use realistic data that represents actual business scenarios
- Include boundary conditions and edge cases
- Implement proper test data cleanup

## Test Coverage Requirements

### Functional Testing
- **Happy Path Testing**: Test normal, expected usage scenarios
- **Error Condition Testing**: Test all error conditions and exception paths
- **Boundary Testing**: Test boundary values and edge cases
- **Business Rule Testing**: Validate all business logic and rules

### Security Testing
- **Authorization Testing**: Test authorization checks and access control
- **Input Validation Testing**: Test input validation and sanitization
- **Data Security Testing**: Test handling of sensitive data

### Integration Testing
- **Interface Testing**: Test external interfaces and dependencies
- **Database Testing**: Test database operations and transactions
- **RFC Testing**: Test RFC function modules and error handling

## Test Implementation Patterns

### Mock Objects and Test Doubles
```abap
" Example test class structure
CLASS ltc_test_class DEFINITION FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    DATA: mo_cut TYPE REF TO zcl_component_under_test.
    
    METHODS: setup,
             teardown,
             test_positive_scenario FOR TESTING,
             test_error_condition FOR TESTING,
             test_boundary_values FOR TESTING.
ENDCLASS.
```

### Test Assertions
- Use appropriate assertion methods (assert_equals, assert_true, etc.)
- Provide meaningful assertion messages
- Test both expected results and side effects
- Verify exception handling and error messages

## Test Documentation

### Test Case Documentation
- Document test purpose and expected behavior
- Specify test data requirements and setup
- Define clear expected results and acceptance criteria
- Include any special considerations or assumptions

### Coverage Reporting
- Ensure adequate statement and branch coverage
- Focus on critical business logic coverage
- Document any coverage exclusions and rationale
- Monitor coverage metrics and improvement trends

## Advanced Testing Techniques

### Performance Testing
- Include performance tests for critical operations
- Test with realistic data volumes
- Monitor memory usage and optimization
- Validate response time requirements

### Error Handling Testing
- Test all exception types and error conditions
- Verify error message clarity and usefulness
- Test error recovery and rollback scenarios
- Validate logging and audit trail functionality

Generate comprehensive ABAP Unit tests following the [testing guidelines](../instructions/testing.instructions.md) and ensure all critical functionality is properly validated.