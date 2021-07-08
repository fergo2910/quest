# REARC QUEST by fergo

# LOCAL ENVIRONMENT

You can use docker or docker-compose (if you want to scale the service). Here are the steps

## Docker

First you need to build the docker image
```bash
docker build --build-arg buildtime_secret=super-secure -t rearc-quest .
```

Then you can run it by selecting the ports
```bash
docker run -it 
```