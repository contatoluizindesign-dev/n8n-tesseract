FROM n8nio/n8n:latest

USER root

# Atualiza a lista e instala o Tesseract (com pacote em português) e o Poppler
RUN apk add --no-cache tesseract-ocr tesseract-ocr-por poppler-utils

USER node
