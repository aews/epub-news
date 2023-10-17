FROM linuxserver/calibre:latest
#RUN wget https://github.com/dropbox/dbxcli/releases/download/v3.0.0/dbxcli-linux-amd64 \
#    && mv dbxcli-linux-amd64 /usr/bin/dbxcli \
#    && chmod +x /usr/bin/dbxcli
RUN wget https://github.com/glotlabs/gdrive/releases/download/3.9.0/gdrive_linux-x64.tar.gz
RUN tar -xvzf gdrive_linux-x64.tar.gz
RUN mv gdrive /usr/bin/
RUN chmod +x /usr/bin/gdrive