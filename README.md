# spagobi-docker
Dockerfile to run SpagoBI server

## build image
```
docker build -t spagobi:5.0 .
```

## create container
```
docker run -d -P spagobi:5.0
```

In case you haven't bind container's 8080 port to some particular port, see which port docker has chosen for your container (see column PORTS).

```
% docker ps
CONTAINER ID        IMAGE               COMMAND                CREATED             STATUS              PORTS                     NAMES
def564eec44d        spagobi:5.0         "/bin/sh -c '/opt/Sp   10 minutes ago      Up 10 minutes       0.0.0.0:49153->8080/tcp   boring_hoover 
```

Web application is accesible at http://localhost:49153/SpagoBI/
