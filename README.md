# Jenkins custom image

In order for jenkins to fit our needs, I added docker-cli and kubectl in addition to the original [Jenkins image](https://hub.docker.com/r/jenkins/jenkins/)

I am also considering adding aws to the image because I need to use docker login in order to push built images to AWS ECR, but for now Im going to see if the docker plugin can work.

## Preqeq
- a local file of docker-17.09.0-ce.tgz
- a local file of kubectl executable (v1.7+)
