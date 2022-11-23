## Cimpress : API Style Guide 

Cimpress API Style guide extends the following 
- https://github.com/stoplightio/spectral-owasp-ruleset
- https://github.com/IBM/openapi-validator
- https://github.com/stoplightio/spectral both "spectral:oas", "spectral:asyncapi rules 


##### Installlation 
``` bash
npm install -g @stoplight/spectral
npm install
```

##### Run from the command line 
``` bash
sudo spectral lint  [file path/url for swagger] --ruleset spectral/cimpress.all.yaml
```

OR 

``` bash
sudo node index.js [file path/url for swagger] result.json
```


## 📜 License

This repository is licensed under the apache license 2.0.





