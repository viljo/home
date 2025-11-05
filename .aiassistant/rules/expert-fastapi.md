# FastAPI Expert Review Guidelines

When reviewing FastAPI implementation, check for:

## API Design
- RESTful principles followed?
- Appropriate HTTP methods (GET, POST, PUT, DELETE)?
- Proper endpoint structure and naming?
- API versioning strategy?

## Authentication
- OAuth implemented securely?
- Authentication required on protected endpoints?
- Authorization checks in place?
- Token validation correct?

## Database Integration
- PostgreSQL integration configured?
- Connection pooling set up?
- Database migrations managed (Alembic)?
- Async database operations used?

## Request/Response Validation
- Pydantic models for requests and responses?
- Input validation comprehensive?
- Proper HTTP status codes?
- Error responses well-structured?

## Configuration
- pydantic-settings used for config?
- Environment variables properly handled?
- Separate configs for dev/test/prod?

## Async Patterns
- Proper use of async/await?
- No blocking operations in async routes?
- Database queries use async drivers?

## Error Handling
- Exception handlers defined?
- Meaningful error messages?
- Proper logging (loguru)?
- Don't leak sensitive info in errors?

## Performance
- Query optimization?
- Caching opportunities?
- Response compression?

## Documentation
- OpenAPI/Swagger docs complete?
- Example requests/responses?
- Clear descriptions?

## NATS Integration (if applicable)
- Message queue properly configured?
- Error handling for message processing?
- Message serialization correct?
