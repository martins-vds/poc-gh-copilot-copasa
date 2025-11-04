<!-- Based on/Inspired by: https://github.com/github/awesome-copilot/blob/main/chatmodes/debug.chatmode.md -->
---
mode: 'agent'
model: Claude Sonnet 4
tools: ['codebase', 'edit', 'search', 'usages', 'problems', 'runCommands']
description: 'Systematic debugging and troubleshooting for ABAP applications'
---

# Debug ABAP Issues

Your goal is to systematically identify, analyze, and resolve bugs in ABAP applications following a structured debugging process.

Ask for the problem details if not provided:

## Problem Assessment

**Issue Description:**
- Error symptoms and behavior observed
- Steps to reproduce the problem
- Expected vs. actual behavior
- Error messages, dumps, or exceptions
- Environment and system information

**Context Information:**
- Affected programs, classes, or function modules
- Recent changes or deployments
- User scenarios and data conditions
- System load and performance indicators

## Systematic Debugging Process

### Phase 1: Problem Understanding
1. **Gather Information**
   - Collect error messages, short dumps, and stack traces
   - Identify affected components and their relationships
   - Review recent changes and transport history
   - Understand business process and user expectations

2. **Reproduce the Issue**
   - Create step-by-step reproduction procedure
   - Test in different environments if possible
   - Document exact conditions that trigger the problem
   - Capture debug information and system state

### Phase 2: Root Cause Analysis
3. **Code Investigation**
   - Trace execution path leading to the error
   - Examine variable values and data flow
   - Check database operations and data consistency
   - Review authorization checks and user context

4. **Pattern Analysis**
   - Look for common ABAP programming issues
   - Check for performance bottlenecks
   - Investigate memory management problems
   - Analyze concurrent access issues

## Common ABAP Issues to Investigate

### Runtime Errors and Dumps
- **ABAP_STACK_OVERFLOW**: Check for infinite recursion
- **TIME_OUT**: Investigate long-running operations
- **TSV_TNEW_PAGE_ALLOC_FAILED**: Memory allocation issues
- **ITAB_DUPLICATE_KEY**: Duplicate key in internal table operations
- **CONVERT_TO_NUMBER**: Type conversion errors

### Database Issues
- **CX_SY_OPEN_SQL_DB**: Database operation errors
- **Deadlocks**: Concurrent access conflicts
- **Performance**: Slow SELECT statements
- **Data Consistency**: Transaction and locking issues

### Authorization and Security
- **No Authorization**: Missing or incorrect authority checks
- **User Context**: Issues with user session and context
- **RFC Security**: Remote function call authorization problems

## Debugging Techniques

### ABAP Debugger Usage
- Set appropriate breakpoints at critical locations
- Use watchpoints for variable monitoring
- Analyze call stack and variable values
- Step through code execution systematically

### Log Analysis
- Review system logs (SM21) for error patterns
- Check application logs for business rule violations
- Analyze performance traces (ST05, SAT)
- Review authorization logs for access issues

### Data Analysis
- Verify data integrity and consistency
- Check for missing or corrupted data
- Validate business rule compliance
- Analyze data volume and processing patterns

## Problem Resolution

### Fix Implementation
- Make targeted, minimal changes to address root cause
- Follow established coding standards and patterns
- Implement proper error handling and logging
- Consider impact on related components

### Testing and Validation
- Test fix with original reproduction steps
- Verify fix doesn't introduce new issues
- Test edge cases and error conditions
- Validate performance impact

## ABAP-Specific Debugging Commands

### Useful Debugging Statements
```abap
" Conditional breakpoints
BREAK-POINT ID debugging_session.

" Runtime analysis
GET RUN TIME FIELD lv_runtime.

" Memory analysis
CALL FUNCTION 'SYSTEM_GET_MEMORY_SIZE'
  IMPORTING
    memory_size = lv_memory.

" Logging for debugging
MESSAGE i001(z_debug) WITH 'Debug info:' lv_variable.
```

### Performance Debugging
- Use ST05 for SQL trace analysis
- Employ SAT for runtime analysis
- Monitor memory consumption with ST02
- Check work process utilization in SM50

## Resolution Documentation

### Issue Summary
- Root cause identification and explanation
- Solution implemented and rationale
- Testing performed and results
- Prevention measures for similar issues

### Knowledge Sharing
- Update troubleshooting documentation
- Share findings with development team
- Create monitoring or alerting if appropriate
- Document lessons learned for future reference

## Prevention Strategies

### Code Quality Measures
- Implement comprehensive unit testing
- Use static analysis tools (Code Inspector, ATC)
- Follow secure coding practices
- Perform thorough code reviews

### Monitoring and Alerting
- Set up application monitoring
- Implement error logging and alerting
- Monitor system performance metrics
- Track business process health indicators

Follow the systematic debugging approach and use the [ABAP development guidelines](../instructions/abap.instructions.md) to ensure robust solutions and prevent similar issues in the future.