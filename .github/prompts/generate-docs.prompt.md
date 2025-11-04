---
mode: 'agent'
model: Claude Sonnet 4
tools: ['codebase', 'edit', 'search', 'usages']
description: 'Generate comprehensive technical documentation for ABAP components'
---

# Generate ABAP Documentation

Your goal is to create comprehensive technical documentation for ABAP components, following professional documentation standards and best practices.

Ask for the documentation requirements if not provided:

## Documentation Scope

**Component Information:**
- Classes, programs, function modules, or interfaces to document
- Intended audience (developers, users, administrators)
- Documentation type (technical specs, user guide, API docs)
- Level of detail required

**Content Requirements:**
- Functional specifications
- Technical implementation details
- Usage examples and integration guides
- Configuration and customization requirements

## Documentation Types

### Technical Specification Documentation
- **Component Overview**: Purpose, functionality, and business context
- **Architecture**: Component relationships and integration points
- **Interface Documentation**: Parameters, return values, and exceptions
- **Implementation Details**: Key algorithms and business logic

### API Documentation
- **Method Documentation**: Purpose, parameters, and usage examples
- **Exception Handling**: Exception types and error scenarios
- **Code Examples**: Practical usage examples and patterns
- **Integration Guidelines**: How to integrate with other components

### User Documentation
- **Functional Overview**: Business capabilities and use cases
- **User Procedures**: Step-by-step usage instructions
- **Configuration Guide**: Setup and customization options
- **Troubleshooting**: Common issues and resolution steps

## Documentation Structure

### Component Documentation Template

```markdown
# [Component Name] - Technical Specification

## Overview
Brief description of component purpose and functionality.

## Business Context
Explanation of business requirements and use cases.

## Technical Architecture
- Component relationships
- Integration points
- Dependencies

## Interface Documentation
### Public Methods
| Method | Parameters | Return Value | Description |
|--------|------------|--------------|-------------|
| method_name | param_list | return_type | functionality |

### Exception Handling
List of exceptions that can be raised and their meanings.

## Implementation Details
Key algorithms, business rules, and technical decisions.

## Usage Examples
Practical code examples showing how to use the component.

## Configuration
Required configuration settings and customization options.

## Testing
Test scenarios and validation procedures.

## Maintenance
Known issues, limitations, and maintenance requirements.
```

### API Documentation Template
Generate comprehensive API documentation including:
- Method signatures and descriptions
- Parameter documentation with types and constraints
- Return value specifications
- Exception handling documentation
- Code examples for common usage patterns

## Code Analysis for Documentation

### Automatic Content Generation
- Extract method signatures and comments from source code
- Identify interface definitions and dependencies
- Analyze usage patterns in the codebase
- Generate parameter documentation from method definitions

### Documentation Quality Checks
- Verify all public methods are documented
- Ensure parameter descriptions are complete
- Validate code examples are current and working
- Check for consistency across related components

## Documentation Best Practices

### Writing Guidelines
- **Clear and Concise**: Use clear, professional language
- **Audience-Appropriate**: Tailor content to intended audience
- **Comprehensive Coverage**: Cover all important aspects
- **Maintainable**: Structure for easy updates and maintenance

### Visual Elements
- Include diagrams for complex architectures
- Use tables for structured information
- Provide flowcharts for business processes
- Add screenshots for user interfaces

### Code Examples
```abap
" Example usage of the component
DATA: lo_component TYPE REF TO zcl_example_class,
      lv_result    TYPE string.

" Create instance
CREATE OBJECT lo_component.

" Call method with parameters
CALL METHOD lo_component->process_data
  EXPORTING
    iv_input = 'sample_data'
  RECEIVING
    rv_result = lv_result.

" Handle exceptions
CATCH zcx_custom_exception INTO DATA(lx_error).
  MESSAGE lx_error->get_text( ) TYPE 'E'.
```

## Documentation Sections

### Overview Section
- Purpose and business justification
- High-level functionality description
- Key benefits and capabilities
- Target users and use cases

### Architecture Section
- Component architecture and design
- Integration with other systems
- Data flow and processing logic
- Security and authorization model

### Implementation Section
- Technical implementation details
- Key algorithms and business rules
- Performance considerations
- Error handling strategies

### Usage Section
- Installation and setup procedures
- Configuration requirements
- Step-by-step usage instructions
- Common scenarios and examples

## Maintenance and Updates

### Documentation Lifecycle
- Regular review and update schedule
- Version control for documentation changes
- Change tracking and approval process
- Feedback collection and incorporation

### Quality Assurance
- Technical accuracy validation
- Completeness verification
- Consistency checks across documents
- User feedback integration

Generate documentation following the [documentation standards](../instructions/documentation.instructions.md) and ensure it provides comprehensive, accurate, and maintainable information for the intended audience.