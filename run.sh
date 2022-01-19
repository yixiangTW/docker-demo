docker image build -t mydocker:v1 . 
docker container run -p 3001:80 -it --rm mydocker:v1