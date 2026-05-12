# 1. Pega uma imagem pura do Alpine Linux
FROM alpine:latest AS alpine

# 2. Inicia a imagem oficial do n8n
FROM n8nio/n8n:latest

USER root

# 3. Restaura o 'apk' (instalador) copiando da imagem pura para dentro do n8n
COPY --from=alpine /sbin/apk /sbin/apk
COPY --from=alpine /usr/lib/libapk.so* /usr/lib/

# 4. Instala o Tesseract, Poppler e o pacote de idioma com o nome correto (data-por)
RUN apk update && apk add --no-cache tesseract-ocr tesseract-ocr-data-por poppler-utils

USER node
