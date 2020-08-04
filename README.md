//DOCKER Hub
https://hub.docker.com/r/rusgumeniuk/doc-an
docker pull rusgumeniuk/doc-an

// PORT: 7878

//
docker build -t doc-an .
docker run --rm -t -p 7878:7878 doc-an

docker login
docker tag doc-an rusgumeniuk/doc-an
docker push rusgumeniuk/doc-an

docker-compose up -d