#!/usr/bin/env bash
set -e

cmd="${1:-help}"
model_arg="${2:-}"
MODEL="${MODEL:-${model_arg:-llama3.1:8b}}"

help() {
  echo "Commands:"
  echo "  setup           - Pull images and start. Example: ./scripts/local-chat-ai.sh setup"
  echo "  model [name]    - Pull model. Example: ./scripts/local-chat-ai.sh model llama3.1:8b"
  echo "  up              - Start containers. Example: ./scripts/local-chat-ai.sh up"
  echo "  down            - Stop containers. Example: ./scripts/local-chat-ai.sh down"
}

case "$cmd" in
  help) help ;;
  setup)
    docker compose pull
    docker compose up -d
    ;;
  model)
    docker compose up -d ollama
    docker exec ollama ollama pull "$MODEL"
    ;;
  up)
    docker compose up -d
    ;;
  down)
    docker compose down
    ;;
  *)
    echo "Unknown: $cmd"
    echo ""
    help
    exit 1
    ;;
esac