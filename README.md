# torinox-in-docker
The torinox tool made by Firely wrapped in docker - for your convenience ;) - find it on https://hub.docker.com/r/jkiddo/torinox

# Example
```
docker run jkiddo/torinox fhir -h
```
To use the tool with state you can use the following volume pattern:

```
docker run -v ~/.torinox:/root/.local/share/Torinox/ jkiddo/torinox fhir server add fhir http://hapi.fhir.org/baseDstu3  
docker run -v ~/.torinox:/root/.local/share/Torinox/ jkiddo/torinox fhir server list
```
