FROM linuxserver/calibre:latest
RUN wget https://github.com/glotlabs/gdrive/releases/download/3.9.0/gdrive_linux-x64.tar.gz \
    && tar -xvzf gdrive_linux-x64.tar.gz \
    && mv gdrive /usr/bin/ \
    && chmod +x /usr/bin/gdrive