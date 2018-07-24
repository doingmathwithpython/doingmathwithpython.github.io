FROM ubuntu:latest

RUN apt-get update && apt-get -y install python3-pip make bash git
RUN pip3 install pelican pelican-youtube markdown pelican-gist beautifulsoup4
RUN git clone https://github.com/amitsaha/pelican-svbhack /tmp/pelican-svbhack
RUN git clone --recursive https://github.com/getpelican/pelican-plugins /tmp/pelican-plugins
WORKDIR /site
ENTRYPOINT ["make", "build"]
