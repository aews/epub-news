#!bin/sh
docker build . -t alexanderwessel/calibre:latest
docker push alexanderwessel/calibre:latest
echo docker run -it --rm -v %cd%:/alexanderwessel/calibre -w /alexanderwessel/calibre --entrypoint /bin/bash alexanderwessel/calibre:latest
