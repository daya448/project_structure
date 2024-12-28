#!/bin/bash

# Check if project name is provided
if [ -z "$1" ]; then
  echo "Error: No project name provided."
  echo "Usage: ./create_project_structure.sh <project_name>"
  exit 1
fi

# Assign the first argument as the project name
PROJECT_NAME=$1

# Root folder for the project
mkdir -p $PROJECT_NAME

# Data folders
mkdir -p $PROJECT_NAME/data/raw
mkdir -p $PROJECT_NAME/data/processed

# Elasticsearch related folders
mkdir -p $PROJECT_NAME/elasticsearch/mappings
mkdir -p $PROJECT_NAME/elasticsearch/queries
mkdir -p $PROJECT_NAME/elasticsearch/config

# LangChain related folders
mkdir -p $PROJECT_NAME/langchain/chains
mkdir -p $PROJECT_NAME/langchain/agents
mkdir -p $PROJECT_NAME/langchain/prompts

# LLM related models
mkdir -p $PROJECT_NAME/models/llm

# Notebooks
mkdir -p $PROJECT_NAME/notebooks

# Scripts folder
mkdir -p $PROJECT_NAME/scripts

# Source code folder for RAG pipeline
mkdir -p $PROJECT_NAME/src

# Test folder
mkdir -p $PROJECT_NAME/tests

# Streamlit UI folder
mkdir -p $PROJECT_NAME/ui/streamlit

# Assets folder for static files (like images, CSS)
mkdir -p $PROJECT_NAME/ui/streamlit/assets

# Root-level files
touch $PROJECT_NAME/requirements.txt
touch $PROJECT_NAME/README.md
touch $PROJECT_NAME/.env
touch $PROJECT_NAME/.gitignore
touch $PROJECT_NAME/pyproject.toml

# Initial Python files in src and scripts
touch $PROJECT_NAME/src/__init__.py
touch $PROJECT_NAME/src/rag_pipeline.py
touch $PROJECT_NAME/src/utils.py
touch $PROJECT_NAME/src/search.py

touch $PROJECT_NAME/scripts/ingest_data.py
touch $PROJECT_NAME/scripts/generate_embeddings.py

# Streamlit app file
touch $PROJECT_NAME/ui/streamlit/app.py

# Example UI component for Streamlit
touch $PROJECT_NAME/ui/streamlit/sidebar.py
touch $PROJECT_NAME/ui/streamlit/main_page.py

# Test files
touch $PROJECT_NAME/tests/test_rag_pipeline.py
touch $PROJECT_NAME/tests/test_elasticsearch.py
touch $PROJECT_NAME/tests/test_langchain.py
touch $PROJECT_NAME/tests/test_streamlit_ui.py

echo "Folder structure for $PROJECT_NAME created successfully!"
