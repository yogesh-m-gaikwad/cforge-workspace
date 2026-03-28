#!/bin/bash

repos=(
  cforge-core
  cforge-gateway
  cforge-nestjs
  cforge-go
  cforge-springboot
  cforge-dotnet
  cforge-express
  cforge-rust
  cforge-ruby
  circuit-ide
)

for repo in "${repos[@]}"; do
  git clone https://github.com/yogesh-m-gaikwad/$repo.git
done