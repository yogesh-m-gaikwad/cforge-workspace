# CircuitForge AI Context

## Architecture Overview

CircuitForge is a multi-repo, multi-stack SaaS EDA platform.

### Structure

- cforge-core → contracts (GraphQL, DB schema, tests)
- cforge-gateway → API gateway (JWT, routing)
- cforge-nestjs → reference backend
- cforge-go / rust / etc → alternative implementations
- circuit-ide → frontend (React + Three.js)

### Core Principles

- All stacks implement SAME contract
- Gateway routes based on ACTIVE_STACK
- MongoDB shared but logically separated
- Redis used for queue + pub/sub
- MinIO used for object storage

### Coding Rules

- Keep services stateless
- Always validate JWT at gateway
- Follow contract from cforge-core
- No direct DB access outside service domain

### Naming Conventions

- Services: auth, workspace, project, drawing, analysis, export, collab
- Ports: 3001–3007 fixed across all stacks
- Redis keys: cf:\*

### Important Files

- GraphQL schema → cforge-core/graphql/schema.graphql
- DB schema → cforge-core/db/
- Gateway config → cforge-gateway/src/config.ts

### Dev Flow

1. Update contract (cforge-core)
2. Implement in NestJS
3. Run conformance tests
4. Replicate in other stacks
