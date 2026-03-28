# cforge-workspace

Central development workspace for CircuitForge.

## Purpose

This repo provides:

- VS Code workspace
- Dev scripts
- Local infrastructure (MongoDB, Redis, MinIO)
- Onboarding setup

## Setup

```bash
git clone <this-repo>
cd cforge-workspace
chmod +x scripts/*.sh
./scripts/clone-all.sh
code circuitforge.code-workspace
```

## Start Dev Infra

```bash
./scripts/start-dev.sh
```

## Stop

```bash
./scripts/stop-dev.sh
```
