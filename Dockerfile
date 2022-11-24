FROM node:18-alpine
RUN mkdir /apidocs
COPY . /app
WORKDIR /app
RUN npm install && npm link
ENTRYPOINT ["spectral", "lint", "--ruleset", "/app/.spectral.yml"]


