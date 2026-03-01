# local-chat-ai 🤖💬

Run a local chat AI with Ollama and Open WebUI.

## What is this? 📦

This is a simple tool. You get Docker with:
* Ollama (model server)
* Open WebUI (chat interface)

## Features ✅

* Fast start
* Models stay on your computer (Docker volume)
* Get models automatic (optional)
* GPU support (NVIDIA) ⚡

## Commands 🚀

First time? Use help:
```bash
./scripts/local-chat-ai.sh help
```

### Step 1: Setup 🔧
Pull images and start everything:
```bash
./scripts/local-chat-ai.sh setup
```

### Step 2: Get a Model 🧠
Get a model (example: llama3.1:8b):
```bash
./scripts/local-chat-ai.sh model llama3.1:8b
```

Wait. This can take time ⏳

### Step 3: Open Chat 💬
Open your web browser:
```
http://localhost:3000
```

## More Commands 🛠️

Start containers:
```bash
./scripts/local-chat-ai.sh up
```

Stop containers:
```bash
./scripts/local-chat-ai.sh down
```

See help anytime:
```bash
./scripts/local-chat-ai.sh help
```

## GPU (NVIDIA) ⚙️

Use GPU support:
```bash
docker compose -f docker-compose.yml -f docker-compose.gpu.yml up -d
```

## Help 📚

See help:
```bash
./scripts/local-chat-ai.sh help
```

Problems? Check:
* `docs/TROUBLESHOOTING.md`