# torinox-in-docker
The torinox tool made by Firely wrapped in docker - for your convenience ;) - find it on https://hub.docker.com/r/jkiddo/torinox

# Example
```
docker run jkiddo/torinox fhir -h
```
To use the tool with state you can use the following volume pattern:

```
$ docker run -v ~/.torinox:/root/.local/share/Torinox/ jkiddo/torinox fhir server add hapi.fhir.org http://hapi.fhir.org/baseDstu3  
Added server alias 'hapi.fhir.org' to http://hapi.fhir.org/baseDstu3
$ docker run -v ~/.torinox:/root/.local/share/Torinox/ jkiddo/torinox fhir server list
hapi.fhir.org - http://hapi.fhir.org/baseDstu3
```

## Alias

To simplify usage you can create an alias:

```bash
$ alias fhir="docker run --rm -v ~/.torinox:/root/.local/share/Torinox/ jkiddo/torinox fhir"
$ fhir server list
hapi.fhir.org - http://hapi.fhir.org/baseDstu3
```
