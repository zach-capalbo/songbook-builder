# Pull base image.
FROM ubuntu:16.04
MAINTAINER Zach Capalbo <zach.geek@gmail.com>
RUN apt-get update && \
    apt-get install -y make texlive-xetex pandoc ruby abcm2ps pandoc texlive-music texlive-xetex texlive-latex-base texlive-full wget && \
    wget https://github.com/google/fonts/raw/master/ofl/junge/Junge-Regular.ttf -O /usr/share/fonts/truetype/Junge-Regular.ttf && \
    wget https://github.com/google/fonts/raw/master/ofl/sourcesanspro/SourceSansPro-Regular.ttf -O /usr/share/fonts/truetype/SourceSansPro-Regular.ttf && \
    wget https://github.com/google/fonts/raw/master/ofl/oldstandardtt/OldStandard-Regular.ttf -O /usr/share/fonts/truetype/OldStandard-Regular.ttf && \
    wget https://github.com/google/fonts/raw/master/ofl/indieflower/IndieFlower.ttf -O /usr/share/fonts/truetype/IndieFlower.ttf && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

#  Default command
CMD ["bash"]
