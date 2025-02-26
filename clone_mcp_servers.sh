#!/bin/bash

# Set base directory
BASE_DIR="/opt/mcp-ecosystem/servers/community"
mkdir -p "$BASE_DIR"

# Array of MCP server repositories
REPOS=(
    "https://github.com/abhishekbhakat/mcp_server_code_assist"
    "https://github.com/aindreyway/mcp-codex-keeper"
    "https://github.com/aindreyway/mcp-neurolora"
    "https://github.com/amidabuddha/unichat-mcp-server"
    "https://github.com/blazickjp/arxiv-mcp-server"
    "https://github.com/blazickjp/web-browser-mcp-server"
    "https://github.com/burningion/video-editing-mcp"
    "https://github.com/cloudflare/mcp-server-cloudflare"
    "https://github.com/cyanheads/obsidian-mcp-server"
    "https://github.com/da-okazaki/mcp-neo4j-server"
    "https://github.com/delorenj/mcp-qdrant-memory"
    "https://github.com/Ejb503/systemprompt-mcp-core"
    "https://github.com/Ejb503/systemprompt-mcp-gmail"
    "https://github.com/Ejb503/systemprompt-mcp-notion"
    "https://github.com/evalstate/mcp-hfspace"
    "https://github.com/evangstav/python-memory-mcp-server"
    "https://github.com/geelen/workers-mcp"
    "https://github.com/Hawstein/mcp-server-reddit"
    "https://github.com/hdresearch/mcp-python"
    "https://github.com/JoshuaRileyDev/supabase-mcp-server"
    "https://github.com/jurasofish/mcpunk"
    "https://github.com/jwaldor/mcp-api-expert"
    "https://github.com/kazuph/mcp-github-pera1"
    "https://github.com/kevinwatt/mcp-webhook"
    "https://github.com/kevinwatt/shell-mcp"
    "https://github.com/kimtaeyoon83/mcp-server-youtube-transcript"
    "https://github.com/ktanaka101/mcp-server-duckdb"
    "https://github.com/Lakphy/deep-reasoning-mcp"
    "https://github.com/lalanikarim/comfy-mcp-pipeline"
    "https://github.com/MarkusPfundstein/mcp-gsuite"
    "https://github.com/mediar-ai/screenpipe/blob/main/screenpipe-integrations/screenpipe-mcp/README.md"
    "https://github.com/MladenSU/cli-mcp-server"
    "https://github.com/mzxrai/mcp-webresearch"
    "https://github.com/neondatabase/mcp-server-neon"
    "https://github.com/OpenDataMCP/OpenDataMCP"
    "https://github.com/qpd-v/mcp-guide"
    "https://github.com/QuantGeekDev/docker-mcp"
    "https://github.com/rectalogic/langchain-mcp"
    "https://github.com/sammcj/mcp-package-docs"
    "https://github.com/shaneholloman/mcp-knowledge-graph"
    "https://github.com/SimonB97/win-cli-mcp-server"
    "https://github.com/snaggle-ai/openapi-mcp-server"
    "https://github.com/spences10/mcp-memory-libsql"
    "https://github.com/Sunwood-ai-labs/command-executor-mcp-server"
    "https://github.com/TaazKareem/clickup-mcp-server"
    "https://github.com/tumf/mcp-shell-server"
    "https://github.com/tumf/mcp-text-editor"
    "https://github.com/wrale/mcp-server-make"
)

# Clone repositories
for repo in "${REPOS[@]}"; do
    # Extract repository name
    repo_name=$(basename "$repo" .git | sed 's/blob\/main\///')
    
    # Clone repository
    echo "Cloning $repo into $BASE_DIR/$repo_name"
    git clone "$repo" "$BASE_DIR/$repo_name" || echo "Failed to clone $repo"
done

# Create a manifest of cloned repositories
find "$BASE_DIR" -maxdepth 1 -type d | tail -n +2 > "$BASE_DIR/cloned_repositories.txt"

echo "MCP Community Servers cloning complete."
