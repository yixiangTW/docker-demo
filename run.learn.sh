docker image build -t mydocker:v0.1 -f Dockerfile.learn .
docker container run -p 3001:3000 --rm -it mydocker:v0.1