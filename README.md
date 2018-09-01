# docker-assembler-xa65

At [docker hub](https://hub.docker.com/) I have an account with the username `oliverpavey`. I built the image locally using `buildImage.sh` and `docker\Dockerfile`, and then uploaded it to the docker cloud.

```
docker login
docker tag docker tag assembler-xa65
docker tag assembler-xa65 oliverpavey/assembler-xa65
docker push oliverpavey/assembler-xa65
```

The last command uploads the image (not just the Dockerfile) to the cloud. (This takes quite a while on a slow asymetric connection.)
```
The push refers to repository [docker.io/oliverpavey/assembler-xa65]
0cc7ade0237f: Pushed
0de3f0153674: Pushing [===========================>                       ]  23.08MB/41.48MB
ec8257ff6a7a: Mounted from library/ubuntu
7422efa72a14: Mounted from library/ubuntu
b6a02001ba33: Mounted from library/ubuntu
a26724645421: Pushed
a30b835850bf: Pushing [==========================>                        ]  44.96MB/84.11MB
```

Subsequently the image becomes available to download with the command:

```
docker pull oliverpavey/assembler-xa65
```

And the public repository can be found on the Internet as [oliverpavey/assembler-xa65](https://hub.docker.com/r/oliverpavey/assembler-xa65/).

Detailed instructions on how to do this can be found in the docker manuals: [Push images to the Docker Cloud](https://docs.docker.com/docker-cloud/builds/push-images/)