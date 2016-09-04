#!/bin/bash
# Removed generated files and cache.
hexo clean
# Generate static files.
hexo g
# Start the server.
hexo s
# Deploy website.
hexo deploy
