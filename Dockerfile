# Definindo a imagem base
FROM node:lts-stretch

COPY . /app

WORKDIR /app

RUN npm run ng build -- --prod --output-path=dist --base-href /v2/tools/mongodb-ui/

# HEALTHCHECK --interval=10s CMD curl --fail http://localhost:4321 || exit 1

ENTRYPOINT ["sh","/app/entrypoint.sh"]
