# GitHub Copilot Instructions for ABAP Development

This repository contains GitHub Copilot configuration for ABAP development with SAP systems. These instructions help GitHub Copilot understand the project context and provide better assistance for ABAP development, testing, and documentation.

## Project Context

This is an ABAP (Advanced Business Application Programming) project focusing on SAP development. The codebase follows SAP development standards and best practices for enterprise application development.

## Technology Stack

- **Language**: ABAP (Advanced Business Application Programming)
- **Platform**: SAP NetWeaver/S/4HANA
- **Development Environment**: SAP Development Tools (ADT) / SAPGUI
- **Version Control**: abapGit integration
- **Testing**: ABAP Unit Testing Framework

## Development Guidelines

### Code Quality Standards
- Follow SAP naming conventions and development guidelines
- Use descriptive object names and follow consistent naming patterns
- Implement proper error handling with exception classes
- Write self-documenting code with meaningful comments
- Follow the Clean ABAP guidelines for maintainable code

### Security Practices
- Implement authorization checks for all business logic
- Validate all user inputs and external data
- Use parameterized queries for dynamic SQL
- Follow SAP security development guidelines
- Implement proper logging for audit trails

### Performance Considerations
- Optimize database access with proper SELECT statements
- Use internal tables efficiently and avoid nested loops
- Implement parallel processing where appropriate
- Follow SAP performance best practices for large data volumes
- Consider memory consumption in data processing

## File Organization

- **Source Code**: ABAP classes, programs, and function modules
- **Tests**: ABAP Unit test classes and test data
- **Documentation**: Technical specifications and user guides
- **Configuration**: Transport requests and customizing documentation

## Related Instructions

For more specific guidance, refer to these instruction files:

- [ABAP Development Guidelines](./instructions/abap.instructions.md)
- [Testing Standards](./instructions/testing.instructions.md)
- [Security Best Practices](./instructions/security.instructions.md)
- [Performance Optimization](./instructions/performance.instructions.md)
- [Documentation Requirements](./instructions/documentation.instructions.md)
- [Code Review Standards](./instructions/code-review.instructions.md)

## Chat Modes

Use these specialized chat modes for different development scenarios:

- `@architect` - For system architecture and design planning
- `@reviewer` - For code review and quality assessment
- `@debugger` - For troubleshooting and debugging assistance

## Prompts

Use these prompts for common development tasks:

- [Create ABAP Component](./prompts/setup-component.prompt.md) - Generate new ABAP classes, programs, or function modules
- [Write Unit Tests](./prompts/write-tests.prompt.md) - Create ABAP Unit test classes
- [Generate Documentation](./prompts/generate-docs.prompt.md) - Create technical documentation
- [Code Review](./prompts/code-review.prompt.md) - Perform comprehensive code reviews
- [Debug Issues](./prompts/debug-issue.prompt.md) - Troubleshoot runtime and logic errors
- [Refactor Code](./prompts/refactor-code.prompt.md) - Modernize and optimize existing ABAP code

## Getting Started

1. Ensure your SAP development environment is properly configured
2. Review the instruction files in `.github/instructions/`
3. Use the appropriate chat modes for your development tasks
4. Leverage the prompts for common development activities

## Support

For questions about these configurations or ABAP development best practices, consult the SAP development documentation and internal development guidelines.