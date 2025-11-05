# Development Workflow

## General Workflow Principles
- **Autonomous iteration**: AI should work on implementation and testing on the target system without requiring user feedback during iterations
- **Minimize feedback rounds**: Try to concentrate all feedback requests to one time per iteration
- Work independently through implementation and testing cycles before presenting results

## Change Workflow
When receiving user input:
1. Update the specification (ask user if new input conflicts with existing spec)
2. Update the tests based on new requirements
3. Update the code to match updated tests and spec
4. Verify implementation against specification and tests

## Version Control Practices
- **Always add .gitignore** to every project from the start
- **Always ask before pushing to remote repositories** - never push to remote repos without explicit user confirmation
- **Attribution**: Do not mention that code, commits, or other artifacts were created by AI in commit messages, code comments, or documentation

## Development Approach
- **Test-Driven Development (TDD)**: Always write unit tests
- Tests should be written first, then implementation to satisfy the tests
- Ask before implementing: Request information needed to write comprehensive tests before starting implementation
- Prioritize readability unless specific performance requirements are stated
