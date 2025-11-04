<!-- Based on/Inspired by: https://github.com/github/awesome-copilot/blob/main/instructions/performance-optimization.instructions.md -->
---
applyTo: "*"
description: "Performance optimization guidelines for ABAP development in SAP systems"
---

# Performance Optimization for ABAP Development

Apply performance optimization principles to all ABAP development for efficient SAP system operation.

## Database Access Optimization

### SELECT Statement Best Practices
- **Minimize Data Retrieval**: Use specific field lists instead of SELECT *
- **Effective WHERE Clauses**: Use proper WHERE conditions to reduce data volume
- **Database Indexes**: Leverage existing indexes and create custom indexes when needed
- **FOR ALL ENTRIES**: Use carefully with proper validation of entry tables
- **Aggregate Functions**: Use database-level aggregation instead of ABAP loops

### Table Access Patterns
- **Primary Key Access**: Always prefer primary key access when possible
- **Range Tables**: Use range tables for efficient interval selections
- **Buffering Strategy**: Understand and leverage SAP table buffering mechanisms
- **Joins vs. Multiple SELECTs**: Choose appropriate strategy based on data volume and relationships

## Internal Table Optimization

### Table Type Selection
- **Standard Tables**: Use for sequential processing and small data volumes
- **Sorted Tables**: Choose for sorted access patterns and binary searches
- **Hashed Tables**: Use for large volumes with key-based access patterns
- **Secondary Indexes**: Implement secondary indexes for complex access requirements

### Processing Efficiency
- **Field Symbols**: Use field symbols instead of copying table rows
- **References**: Use data references for large structures to avoid copying
- **Parallel Processing**: Implement parallel processing for large data volumes
- **Memory Management**: Clear large internal tables after processing

## Algorithm and Logic Optimization

### Loop Optimization
- **Avoid Nested Loops**: Minimize nested loop structures where possible
- **Early Exit**: Use CHECK statements and early exits to reduce processing
- **Batch Processing**: Process data in batches for better memory management
- **Binary Search**: Use binary search on sorted tables for lookups

### Conditional Logic
- **Efficient Conditions**: Order conditions by likelihood of being true
- **CASE vs. IF**: Use CASE statements for multiple condition checks
- **Short-Circuit Evaluation**: Leverage ABAP's short-circuit evaluation in conditions
- **Precomputed Values**: Cache frequently calculated values

## Memory Management

### Data Declaration Strategies
- **Appropriate Data Types**: Use most efficient data types for each use case
- **Local vs. Global Data**: Minimize global data usage and prefer local variables
- **Dynamic Allocation**: Use dynamic memory allocation for variable-sized data
- **Resource Cleanup**: Clear large data structures when no longer needed

### Memory Footprint Reduction
- **String Operations**: Use efficient string operations and avoid concatenation in loops
- **Table Size Management**: Monitor and control internal table sizes
- **Object Lifecycle**: Manage object creation and destruction efficiently
- **Garbage Collection**: Understand ABAP garbage collection behavior

## User Interface Performance

### Screen Processing
- **Field Validation**: Implement efficient field validation logic
- **Data Transport**: Minimize data transport between screen and application
- **Event Handling**: Optimize event handling for responsive user interfaces
- **Background Processing**: Move heavy processing to background where appropriate

### ALV and Reporting
- **Data Volume Management**: Implement proper pagination and filtering
- **Field Catalog Optimization**: Optimize field catalog creation and maintenance
- **Variant Management**: Provide efficient variant handling for user preferences
- **Export Functions**: Optimize data export functionality for large volumes

## Background Processing Performance

### Batch Job Optimization
- **Job Scheduling**: Schedule batch jobs during off-peak hours
- **Parallel Processing**: Implement parallel processing for independent tasks
- **Commit Strategy**: Use appropriate commit strategies for long-running jobs
- **Progress Monitoring**: Implement progress monitoring and logging

### RFC and Web Service Performance
- **Connection Pooling**: Use RFC connection pooling for better resource utilization
- **Data Serialization**: Optimize data serialization for external interfaces
- **Timeout Handling**: Implement appropriate timeout handling for external calls
- **Error Recovery**: Design efficient error recovery mechanisms

## SAP-Specific Performance Considerations

### ABAP Runtime Optimization
- **Statement Performance**: Understand performance characteristics of ABAP statements
- **Built-in Functions**: Leverage efficient built-in functions and classes
- **Package Size**: Optimize package sizes for transport and runtime efficiency
- **Compilation**: Understand ABAP compilation and optimization features

### System Resource Management
- **Work Process Utilization**: Design for efficient work process usage
- **Memory Consumption**: Monitor and optimize memory consumption patterns
- **CPU Usage**: Profile and optimize CPU-intensive operations
- **I/O Operations**: Minimize and optimize file system operations

## Performance Monitoring and Analysis

### Profiling Tools
- **SAT (Runtime Analysis Tool)**: Use SAT for detailed performance analysis
- **ST05 (SQL Trace)**: Monitor database access patterns and optimization opportunities
- **ST12 (ABAP Trace)**: Analyze complete transaction flows
- **SE30/SAT**: Profile custom programs and identify bottlenecks

### Performance Metrics
- **Response Time Targets**: Define and monitor response time targets
- **Throughput Measurement**: Measure and optimize system throughput
- **Resource Utilization**: Monitor CPU, memory, and database utilization
- **User Experience**: Track user-perceived performance metrics

## Development Best Practices

### Code Design for Performance
- **Modular Design**: Design modular components for better maintainability and performance
- **Caching Strategies**: Implement appropriate caching at different levels
- **Lazy Loading**: Use lazy loading patterns for optional data
- **Asynchronous Processing**: Implement asynchronous processing where appropriate

### Testing Performance
- **Performance Testing**: Include performance testing in development lifecycle
- **Load Testing**: Test applications under realistic load conditions
- **Stress Testing**: Identify breaking points and system limits
- **Regression Testing**: Monitor for performance regressions in new releases

## Common Performance Anti-Patterns

### Database Anti-Patterns
- **SELECT in Loops**: Avoid database access inside loops
- **Unnecessary Joins**: Don't use complex joins when simple selects suffice
- **Missing WHERE Clauses**: Always use appropriate WHERE conditions
- **Ignoring Indexes**: Understand and leverage database indexes

### Processing Anti-Patterns
- **Inefficient Loops**: Avoid unnecessary nested loops and processing
- **Memory Leaks**: Prevent memory leaks through proper resource management
- **Synchronous Processing**: Don't use synchronous processing for long-running tasks
- **Poor Error Handling**: Avoid expensive error handling in performance-critical paths

## Optimization Checklist

- [ ] Database access patterns are optimized with proper WHERE clauses
- [ ] Internal table types are appropriate for their usage patterns
- [ ] Loops and conditional logic are structured efficiently
- [ ] Memory usage is monitored and optimized
- [ ] User interface responsiveness is maintained
- [ ] Background processing is designed for efficiency
- [ ] Performance monitoring is implemented
- [ ] Code follows SAP performance best practices
- [ ] Common anti-patterns are avoided
- [ ] Performance testing is included in development process