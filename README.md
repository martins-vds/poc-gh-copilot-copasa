# ABAP Development Getting Started Examples

This directory contains example ABAP code to help you get started with ABAP development using the guidelines and best practices configured in this workspace.

## 📁 File Structure

```
src/
├── zcl_hello_world.abap       # Example ABAP class
├── zcx_custom_exception.abap  # Custom exception class
└── z_hello_world_demo.abap    # Example ABAP report/program

tests/
└── ltc_hello_world_test.abap  # Unit tests for the example class
```

## 🎯 What You'll Learn

### 1. **ABAP Class Development** (`zcl_hello_world.abap`)
- **Clean ABAP principles**: Descriptive naming, clear structure
- **Object-oriented design**: Public/private sections, encapsulation
- **Modern ABAP syntax**: VALUE operator, inline declarations
- **Input validation**: Security best practices
- **Error handling**: Structured exception management

### 2. **Exception Handling** (`zcx_custom_exception.abap`)
- **Custom exception classes**: Inheriting from CX_STATIC_CHECK
- **Text ID management**: Structured error messages
- **Exception attributes**: Additional error context

### 3. **Unit Testing** (`ltc_hello_world_test.abap`)
- **ABAP Unit framework**: FOR TESTING, test class structure
- **Test patterns**: Given-When-Then approach
- **Comprehensive coverage**: Positive and negative scenarios
- **Assertions**: Using CL_ABAP_UNIT_ASSERT

### 4. **ABAP Programs** (`z_hello_world_demo.abap`)
- **Report structure**: Selection screen, processing blocks
- **Class integration**: Using custom classes in programs
- **User interface**: Selection screens and output formatting
- **Error handling**: Exception management in programs

## 🚀 Getting Started

### Step 1: Review the Code
Start by examining each file to understand:
- ABAP syntax and conventions
- Class design patterns
- Testing approaches
- Exception handling

### Step 2: Use GitHub Copilot
This workspace is configured with specialized ABAP prompts. Try:

```
@architect Can you help me design a more complex ABAP class for customer management?
```

Or use the specialized prompts:
- Create new components with the setup-component prompt
- Generate tests with the write-tests prompt
- Get code reviews with the code-review prompt

### Step 3: Extend the Examples
Try modifying the examples:
- Add new greeting languages
- Implement additional validation
- Create more complex business logic
- Add integration with database tables

## 📋 ABAP Development Checklist

When creating new ABAP code, ensure:

- [ ] **Naming**: Use Y/Z prefixes for custom objects
- [ ] **Structure**: Follow Clean ABAP principles
- [ ] **Security**: Implement authorization checks
- [ ] **Performance**: Optimize database access
- [ ] **Testing**: Write comprehensive unit tests
- [ ] **Documentation**: Add clear comments and documentation
- [ ] **Error Handling**: Use structured exception classes

## 🔧 Using the Workspace Tools

### Chat Modes
- `@architect` - Architecture and design guidance
- `@reviewer` - Code review and quality checks
- `@debugger` - Troubleshooting assistance

### Specialized Prompts
- **Create Component**: Use `.github/prompts/setup-component.prompt.md`
- **Write Tests**: Use `.github/prompts/write-tests.prompt.md`
- **Code Review**: Use `.github/prompts/code-review.prompt.md`
- **Debug Issues**: Use `.github/prompts/debug-issue.prompt.md`
- **Refactor Code**: Use `.github/prompts/refactor-code.prompt.md`

## 📚 Next Steps

1. **Explore Guidelines**: Review all instruction files in `.github/instructions/`
2. **Practice**: Modify and extend the example code
3. **Real Projects**: Apply these patterns to actual business requirements
4. **Advanced Topics**: Explore performance optimization and security patterns

## 💡 Tips for Success

- **Start Simple**: Begin with basic classes and gradually add complexity
- **Test Everything**: Write tests as you develop, not after
- **Follow Standards**: Use the provided guidelines and let Copilot help
- **Ask Questions**: Use the chat modes to get guidance and reviews
- **Iterate**: Refactor and improve your code continuously

Happy ABAP coding! 🚀