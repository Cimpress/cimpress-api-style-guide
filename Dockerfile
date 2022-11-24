FROM node:18-alpine
RUN mkdir /apidocs
COPY . /app
WORKDIR /app
RUN npm install && npm link
ENTRYPOINT ["cimpress-lint", "lint", "--ruleset", ".spectral.yml", "/apidocs/openapi.yaml"]


