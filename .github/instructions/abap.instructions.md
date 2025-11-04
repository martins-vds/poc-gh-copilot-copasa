---
applyTo: "**/*.abap"
description: "ABAP development guidelines and best practices for SAP systems"
---

# ABAP Development Guidelines

Apply the [general coding guidelines](../copilot-instructions.md) to all ABAP code.

## Naming Conventions

### Objects and Variables
- Use descriptive names following SAP naming conventions
- Prefix custom objects with Y or Z (e.g., ZCL_CUSTOMER_MANAGER)
- Use underscores to separate words in variable names
- Constants should be in uppercase with meaningful prefixes

### Classes and Methods
- Class names should start with CL_ or ZCL_ for custom classes
- Method names should be verb-based and describe the action
- Use consistent naming patterns across the application
- Follow Clean ABAP naming principles

## Code Structure

### Class Design
- Follow single responsibility principle for classes
- Implement proper encapsulation with private, protected, and public sections
- Use interfaces to define contracts between components
- Prefer composition over inheritance where appropriate

### Method Implementation
- Keep methods focused and concise
- Use meaningful parameter names and document their purpose
- Implement proper error handling with exception classes
- Return early from methods to reduce nesting

## Data Handling

### Internal Tables
- Choose appropriate table types (standard, sorted, hashed) based on usage
- Use field symbols and references for performance optimization
- Avoid deep nested loops and prefer efficient processing patterns
- Initialize tables properly and clear them when no longer needed

### Database Operations
- Use Open SQL for database operations where possible
- Implement proper WHERE clauses to minimize data retrieval
- Use FOR ALL ENTRIES carefully and validate entry tables
- Consider performance implications of SELECT statements

## Error Handling

### Exception Management
- Use exception classes instead of SY-SUBRC checks where possible
- Create custom exception classes for business-specific errors
- Implement proper exception propagation in call chains
- Document exception handling strategies in method signatures

### Validation and Checks
- Validate input parameters at method entry points
- Implement authorization checks for sensitive operations
- Use proper data type conversions and handle conversion errors
- Check system responses and handle errors gracefully

## Performance Guidelines

### Database Access
- Use appropriate SELECT statements with optimal WHERE conditions
- Implement proper indexing strategies for custom tables
- Avoid SELECT in loops; use array operations instead
- Monitor and optimize expensive database operations

### Memory Management
- Clear large internal tables when processing is complete
- Use appropriate data types to minimize memory footprint
- Implement efficient sorting and searching algorithms
- Consider memory consumption in batch processing scenarios

## Security Considerations

### Authorization
- Implement proper authorization checks using authority objects
- Validate user permissions before executing business logic
- Use appropriate authorization concepts for different operation types
- Document required authorizations for each functionality

### Data Protection
- Implement proper input validation and sanitization
- Use secure coding practices for sensitive data handling
- Follow SAP security guidelines for custom development
- Implement audit trails for critical business operations

## Testing Guidelines

### Unit Testing
- Write comprehensive ABAP Unit tests for all public methods
- Use test doubles and mocking for external dependencies
- Implement proper test data setup and teardown
- Achieve good test coverage for critical business logic

### Integration Testing
- Test interactions between different components
- Validate end-to-end business scenarios
- Test error conditions and exception scenarios
- Document test scenarios and expected outcomes

## Documentation Standards

### Code Comments
- Write self-documenting code with meaningful names
- Add comments for complex business logic and calculations
- Document non-obvious technical decisions and workarounds
- Keep comments up-to-date with code changes

### Technical Documentation
- Document class and method purposes and usage
- Provide examples for complex interfaces and patterns
- Maintain architecture documentation for system components
- Document customization and configuration requirements