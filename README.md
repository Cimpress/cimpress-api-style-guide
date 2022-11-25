## Cimpress : API Style Guide 

Cimpress API Style guide extends the following 
- https://github.com/stoplightio/spectral-owasp-ruleset
- https://github.com/IBM/openapi-validator
- https://github.com/stoplightio/spectral both "spectral:oas", "spectral:asyncapi rules 

## Running in CI:

The repository contains a Dockerfile which can be used to build a Docker image. Run the following commands to get it running:
```shell
docker build -t cimpress-linter:1.0.0 .
# Docker requires a volume to be made available to execute the script on the file.
# For example if your `openapi.yaml` is present in current directory, you can use this to mount the directory and provide two parameters to the `run` command. 
# 1. absolute path of the openapi file in the mounted volumne
# 2. Optional parameter of how to print the results 
docker run -v $(pwd)/src/main/resources/apidocs:/apidocs -it cimpress-linter:0.1.0 /apidocs/openapi.yaml -f pretty
```

## 📜 License

This repository is licensed under the apache license 2.0.





