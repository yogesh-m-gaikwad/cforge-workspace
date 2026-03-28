# AI Coding Rules

When generating code:

1. ALWAYS follow GraphQL schema from cforge-core
2. NEVER invent new fields or endpoints
3. Respect service boundaries
4. Use environment variables for config
5. Keep code production-ready (no mock hacks)
6. Follow existing folder structure

### Backend Rules

- Use service-based architecture
- Keep controllers thin
- Business logic in services
- DTO validation required

### Frontend Rules

- Use Redux state structure already defined
- Do not break existing circuit model
