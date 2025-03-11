#!/bin/sh
set -e

# Start Ollama in background
/bin/ollama serve &

# Wait for Ollama to start
echo "Waiting for Ollama to start..."
until ollama list >/dev/null 2>&1; do
    sleep 2
done

echo "Ollama is running."

# Download model mxbai-embed-large if not exists
if ! ollama list | grep -q "mxbai-embed-large"; then
    echo "Model 'mxbai-embed-large' not found. Pulling..."
    ollama pull mxbai-embed-large
else
    echo "Model 'mxbai-embed-large' already exists."
fi

# Download model deepseek-r1:32b if not exists
if ! ollama list | grep -q "deepseek-r1:32b"; then
    echo "Model 'deepseek-r1:32b' not found. Pulling..."
    ollama pull deepseek-r1:32b
else
    echo "Model 'deepseek-r1:32b' already exists."
fi

tail -f /dev/null
