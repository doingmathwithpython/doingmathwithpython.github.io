FROM fedora:24

ARG git_username
ARG git_useremail
ARG gid
ARG group
ARG uid
ARG user
RUN groupadd -g $gid  $group || true && useradd -u $uid -g $gid -d /home/$user $user

RUN dnf -y install python3-pip wget git make bash
RUN git config --global user.name $git_username && git config --global user.email $git_useremail
RUN pip3 install pelican pelican-youtube beautifulsoup4
RUN git clone --recursive https://github.com/getpelican/pelican-plugins /pelican-plugins 
WORKDIR /site
USER $user
ENTRYPOINT ["make", "build"]
