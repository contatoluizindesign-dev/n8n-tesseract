FROM n8nio/n8n:latest

USER root

# Atualiza a lista do Debian e instala o Tesseract (com pacote em pt-BR) e o Poppler
RUN apt-get update && apt-get install -y tesseract-ocr tesseract-ocr-por poppler-utils && rm -rf /var/lib/apt/lists/*

USER node
