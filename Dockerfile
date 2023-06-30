FROM jamesmortensen1/base:latest

USER root

RUN apt-get -qqy update \
  && apt-get -qqy --no-install-recommends install \
    libfontconfig \
    libfreetype6 \
    xfonts-cyrillic \
    xfonts-scalable \
    fonts-liberation \
    fonts-ipafont-gothic \
    fonts-wqy-zenhei \
    fonts-tlwg-loma-otf \
    # ttf-ubuntu-font-family \
    fonts-noto-color-emoji \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get -qyy clean

USER seluser
