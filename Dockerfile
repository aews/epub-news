FROM linuxserver/calibre:latest
RUN wget https://github.com/dropbox/dbxcli/releases/download/v3.0.0/dbxcli-linux-amd64 \
    && mv dbxcli-linux-amd64 /usr/bin/dbxcli \
    && chmod +x /usr/bin/dbxcli