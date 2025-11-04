<!-- Based on/Inspired by: https://github.com/github/awesome-copilot/blob/main/instructions/security-and-owasp.instructions.md -->
---
applyTo: "*"
description: "Security best practices for ABAP development in SAP environments"
---

# Security Best Practices for ABAP Development

Apply comprehensive security practices to all ABAP development in SAP systems.

## Authorization and Access Control

### SAP Authorization Framework
- **Implement Authority Checks**: Always use AUTHORITY-CHECK statements for business logic
- **Principle of Least Privilege**: Grant minimum required permissions for each user role
- **Authorization Objects**: Use appropriate authorization objects and define custom ones when needed
- **Role-Based Access Control**: Implement proper RBAC patterns following SAP authorization concepts

### Data Access Security
- **Validate User Permissions**: Check user authorizations before displaying or modifying sensitive data
- **Implement Field-Level Security**: Control access to sensitive fields based on authorization
- **Audit Trail Requirements**: Log all access to critical business data
- **Cross-Client Security**: Ensure proper client isolation in multi-client environments

## Input Validation and Injection Prevention

### SQL Injection Prevention
- **Use Open SQL**: Prefer Open SQL over Native SQL to leverage built-in protections
- **Parameterized Queries**: Always use dynamic WHERE clauses with proper parameter binding
- **Validate Dynamic SQL**: When Native SQL is required, validate all dynamic components
- **Escape Special Characters**: Properly escape user input in dynamic SQL construction

### Input Sanitization
- **Validate All User Input**: Check format, length, and content of all user-provided data
- **Type Checking**: Ensure input matches expected data types and formats
- **Business Logic Validation**: Validate input against business rules and constraints
- **File Upload Security**: Validate file types, sizes, and content when handling uploads

## Data Protection and Encryption

### Sensitive Data Handling
- **Data Classification**: Identify and classify sensitive data according to business requirements
- **Encryption at Rest**: Use SAP's encryption capabilities for sensitive data storage
- **Secure Transmission**: Ensure HTTPS/SSL for all web-based communications
- **Personal Data Protection**: Follow GDPR and other privacy regulations for personal data

### Secret Management
- **No Hardcoded Secrets**: Never hardcode passwords, API keys, or other secrets in ABAP code
- **Use SAP Secure Storage**: Leverage SAP's secure storage mechanisms for credentials
- **Environment-Based Configuration**: Use system parameters and customizing for environment-specific settings
- **Key Rotation**: Implement proper key rotation strategies for encryption keys

## Session and Authentication Security

### Session Management
- **Secure Session Handling**: Use SAP's built-in session management capabilities
- **Session Timeout**: Implement appropriate session timeout policies
- **Session Validation**: Validate session state before executing sensitive operations
- **Prevent Session Fixation**: Use SAP's session handling best practices

### Authentication Patterns
- **Strong Authentication**: Support multi-factor authentication where required
- **Password Policies**: Enforce strong password policies through SAP user management
- **Account Lockout**: Implement proper account lockout mechanisms for failed attempts
- **Single Sign-On**: Leverage SAP SSO capabilities for better security and user experience

## Secure Communication

### RFC and Web Service Security
- **Secure RFC Connections**: Use secure RFC connections with proper authentication
- **Web Service Encryption**: Ensure all web service communications use HTTPS
- **Message Integrity**: Implement message signing and validation for critical interfaces
- **API Security**: Follow SAP security guidelines for REST and SOAP APIs

### External System Integration
- **Validate External Data**: Treat all external system data as untrusted
- **Secure Connections**: Use secure protocols for all external system communications
- **Error Handling**: Avoid exposing internal system details in error messages
- **Rate Limiting**: Implement appropriate rate limiting for external interfaces

## Error Handling and Logging

### Secure Error Handling
- **Generic Error Messages**: Avoid exposing sensitive system information in error messages
- **Proper Exception Handling**: Use exception classes to handle errors gracefully
- **Log Security Events**: Log all security-relevant events for audit purposes
- **Monitor Failed Attempts**: Track and alert on repeated failed access attempts

### Audit and Compliance
- **Comprehensive Logging**: Log all critical business operations and data access
- **Log Retention**: Maintain logs according to compliance requirements
- **Change Tracking**: Track all changes to critical business data
- **Compliance Reporting**: Generate required compliance reports and evidence

## Development Security Practices

### Secure Coding Guidelines
- **Code Reviews**: Implement mandatory security-focused code reviews
- **Static Analysis**: Use SAP Code Inspector and ATC for security rule validation
- **Dependency Management**: Keep all SAP components and add-ons up to date
- **Configuration Security**: Follow SAP security configuration guidelines

### Transport and Deployment Security
- **Secure Transport Process**: Ensure transport requests are properly authorized and tracked
- **Production Deployment**: Implement proper approval processes for production deployments
- **Environment Isolation**: Maintain proper separation between development, test, and production
- **Change Management**: Follow SAP change management best practices

## SAP-Specific Security Considerations

### ABAP Runtime Security
- **Authority Check Performance**: Optimize authority checks for performance while maintaining security
- **Background Job Security**: Implement proper authorization for background job execution
- **RFC Security**: Secure all RFC function modules with appropriate authorization checks
- **Dynamic Programming**: Use dynamic programming features securely with proper validation

### SAP System Security
- **Profile Parameters**: Follow SAP security profile parameter recommendations
- **User Management**: Implement proper user lifecycle management
- **Segregation of Duties**: Ensure proper SoD controls in business processes
- **Security Patch Management**: Keep SAP systems updated with latest security patches

## Common Security Anti-Patterns to Avoid

- **Bypassing Authorization**: Never skip authorization checks for "convenience"
- **Debug in Production**: Avoid leaving debug statements or test code in production
- **Overprivileged Users**: Don't grant excessive authorizations to users or technical users
- **Insecure Defaults**: Always change default passwords and configurations
- **Information Leakage**: Don't expose sensitive system information in logs or messages