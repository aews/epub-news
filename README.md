# export heise newsticker as epub to google drive

This repo use a github action to trigger the *publish-heise-to-gdrive.sh* once a day. 
Its executed within the *[linuxserver/calibre:latest](https://github.com/linuxserver/docker-calibre)* docker image
in order to use a calibre reciepce to export heise.de newsticker as an epub file.
The epub file is then uploaded to google drive by using [gdrive](https://github.com/glotlabs/gdrive).

To login within google drive it uses the *gdrive account import  <tar-file>* stored as a base64 github secret.
