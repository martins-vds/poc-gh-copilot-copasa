---
mode: 'agent'
model: Claude Sonnet 4
tools: ['codebase', 'edit', 'search']
description: 'Generate new ABAP components (classes, programs, function modules)'
---

# Create ABAP Component

Your goal is to generate a new ABAP component based on the project requirements and existing patterns in the codebase.

Ask for the component type and specifications if not provided:

## Component Information Required

**Component Type:**
- Class (Global or Local)
- Program (Report, Module Pool, Function Group)
- Function Module
- Interface
- Data Element/Domain
- Table/Structure

**Component Specifications:**
- Name and description
- Functional requirements
- Input/output parameters
- Integration requirements
- Performance requirements

## Implementation Requirements

### For ABAP Classes:
- Follow SAP naming conventions (ZCL_* for custom classes)
- Implement proper class structure with public, protected, and private sections
- Use interfaces where appropriate for loose coupling
- Include proper exception handling with custom exception classes
- Add comprehensive ABAP Unit tests

### For ABAP Programs:
- Follow SAP program structure and conventions
- Implement proper selection screen for report programs
- Include authorization checks and input validation
- Add proper error handling and user messaging
- Consider performance for large data volumes

### For Function Modules:
- Define clear interface with proper parameter documentation
- Implement authorization checks within the function
- Use proper exception handling and error propagation
- Create comprehensive test cases
- Consider RFC-enablement requirements

## Code Generation Guidelines

**Structure and Design:**
- Use descriptive names following SAP conventions
- Implement single responsibility principle
- Create modular, reusable components
- Include proper documentation and comments

**Security and Performance:**
- Implement required authorization checks
- Validate all input parameters
- Use efficient database access patterns
- Consider memory management for large data processing

**Testing and Quality:**
- Generate ABAP Unit test classes
- Include test data and scenarios
- Test error conditions and edge cases
- Ensure code meets quality standards

## Integration Considerations

- Review existing codebase patterns and follow established conventions
- Ensure compatibility with existing interfaces and components
- Consider transport and deployment requirements
- Plan for future maintenance and extensibility

Generate the component code following the [ABAP development guidelines](../instructions/abap.instructions.md) and ensure it integrates well with the existing codebase architecture.