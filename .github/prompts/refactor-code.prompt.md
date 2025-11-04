---
mode: 'agent'
model: Claude Sonnet 4
tools: ['codebase', 'edit', 'search', 'usages']
description: 'Modernize and optimize existing ABAP code following best practices'
---

# Refactor ABAP Code

Your goal is to modernize and optimize existing ABAP code while maintaining functionality and improving maintainability, performance, and code quality.

Ask for the refactoring scope if not provided:

## Refactoring Scope Definition

**Code to Refactor:**
- Specific classes, programs, or function modules
- Refactoring objectives (performance, maintainability, modernization)
- Constraints and limitations
- Risk tolerance and testing requirements

**Refactoring Goals:**
- Code quality improvements
- Performance optimization
- Security enhancements
- Modernization to current ABAP standards

## Refactoring Categories

### Code Quality Refactoring
- **Clean Code Principles**: Apply Clean ABAP guidelines
- **Method Extraction**: Break down large methods into smaller, focused ones
- **Variable Naming**: Improve variable and method names for clarity
- **Code Structure**: Reorganize code for better readability and maintenance

### Performance Refactoring
- **Database Access**: Optimize SELECT statements and database operations
- **Internal Table Operations**: Improve internal table processing efficiency
- **Algorithm Optimization**: Replace inefficient algorithms with optimized ones
- **Memory Management**: Optimize memory usage and resource management

### Modern ABAP Features
- **New Syntax**: Update to modern ABAP syntax and language features
- **Object-Oriented Design**: Convert procedural code to object-oriented patterns
- **Exception Handling**: Replace SY-SUBRC checks with exception classes
- **Built-in Functions**: Use modern built-in functions and methods

## Refactoring Process

### Step 1: Analysis and Planning
1. **Code Analysis**
   - Identify code smells and anti-patterns
   - Analyze performance bottlenecks
   - Review security vulnerabilities
   - Assess test coverage

2. **Impact Assessment**
   - Identify dependencies and usage patterns
   - Assess risk of changes
   - Plan testing strategy
   - Define success criteria

### Step 2: Implementation Strategy
3. **Incremental Approach**
   - Plan small, manageable refactoring steps
   - Maintain functionality during refactoring
   - Test after each refactoring step
   - Document changes and rationale

4. **Safety Measures**
   - Create comprehensive tests before refactoring
   - Use version control for change tracking
   - Implement rollback procedures
   - Validate functionality after each change

## Common ABAP Refactoring Patterns

### Database Access Optimization
```abap
" BEFORE: Inefficient database access
LOOP AT lt_customers INTO ls_customer.
  SELECT SINGLE * FROM orders INTO ls_order
    WHERE customer_id = ls_customer-id.
  " Process order
ENDLOOP.

" AFTER: Optimized with FOR ALL ENTRIES
IF lt_customers IS NOT INITIAL.
  SELECT * FROM orders INTO TABLE lt_orders
    FOR ALL ENTRIES IN lt_customers
    WHERE customer_id = lt_customers-id.
ENDIF.
```

### Method Extraction
```abap
" BEFORE: Large method with multiple responsibilities
METHOD process_customer_data.
  " 50+ lines of mixed logic
ENDMETHOD.

" AFTER: Extracted smaller, focused methods
METHOD process_customer_data.
  validate_customer_data( ).
  calculate_customer_metrics( ).
  update_customer_status( ).
  send_notifications( ).
ENDMETHOD.
```

### Exception Handling Modernization
```abap
" BEFORE: SY-SUBRC checking
CALL FUNCTION 'SOME_FUNCTION'
  IMPORTING
    result = lv_result
  EXCEPTIONS
    error = 1.
IF sy-subrc <> 0.
  " Error handling
ENDIF.

" AFTER: Exception class usage
TRY.
    CALL METHOD lo_object->some_method
      RECEIVING
        r_result = lv_result.
  CATCH zcx_custom_exception INTO lx_error.
    " Structured error handling
ENDTRY.
```

## Refactoring Guidelines

### Safety First
- **Test Coverage**: Ensure comprehensive test coverage before refactoring
- **Incremental Changes**: Make small, incremental changes
- **Continuous Testing**: Test after each refactoring step
- **Backup Strategy**: Maintain ability to rollback changes

### Quality Focus
- **Code Readability**: Improve code readability and documentation
- **Performance**: Optimize performance where beneficial
- **Maintainability**: Enhance code maintainability and extensibility
- **Standards Compliance**: Ensure compliance with coding standards

## Specific Refactoring Techniques

### Structure Improvements
- Extract methods from large procedures
- Eliminate code duplication
- Improve variable and method naming
- Organize code into logical modules

### Performance Optimizations
- Optimize database queries and access patterns
- Improve internal table operations
- Reduce memory consumption
- Eliminate unnecessary processing

### Modernization Updates
- Update to current ABAP syntax
- Implement object-oriented design patterns
- Use modern exception handling
- Leverage new ABAP language features

## Testing Strategy

### Pre-Refactoring Testing
- Create comprehensive unit tests
- Document current behavior and expectations
- Establish performance baselines
- Identify integration test requirements

### Post-Refactoring Validation
- Verify all tests continue to pass
- Validate performance improvements
- Check for regression issues
- Confirm security measures remain intact

## Documentation and Communication

### Change Documentation
- Document refactoring objectives and outcomes
- Record performance improvements achieved
- Note any behavior changes or impacts
- Update technical documentation

### Team Communication
- Communicate refactoring plans and progress
- Share lessons learned and best practices
- Provide training on new patterns or techniques
- Coordinate with stakeholders on changes

Use the [ABAP development guidelines](../instructions/abap.instructions.md) and [performance optimization principles](../instructions/performance.instructions.md) to guide your refactoring efforts and ensure high-quality, maintainable code.