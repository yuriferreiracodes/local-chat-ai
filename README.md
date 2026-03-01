# local-chat-ai 🤖💬

Run a local chat AI with Ollama and Open WebUI.

## What is this? 📦
This repo gives you a simple Docker Compose stack to run:
- Ollama (model server)
- Open WebUI (chat UI)

## Features ✅
- Fast local setup
- Persistent models (Docker volume)
- Auto pull models on start (optional)
- GPU support (NVIDIA) ⚡

## Quick start 🚀
1) Copy env file:
   - `cp .env.example .env`
2) Start:
   - `docker compose up -d`
3) Open:
   - `http://localhost:3000`

## Pull models 🧠
- `make pull`
- Default model: `OLLAMA_MODEL` in `.env`

## GPU (NVIDIA) ⚙️
- `docker compose -f docker-compose.yml -f docker-compose.gpu.yml up -d`

## Useful commands 🛠️
- `make logs` (see logs)
- `make ps` (see containers)
- `make models` (list models)

## Docs 📚
- `docs/TROUBLESHOOTING.md`