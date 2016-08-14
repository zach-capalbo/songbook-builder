# Pull base image.
FROM ubuntu:16.04
MAINTAINER Zach Capalbo <zach.geek@gmail.com>
RUN apt-get update && \
    apt-get install -y make texlive-xetex pandoc ruby abcm2ps pandoc texlive-music texlive-xetex texlive-latex-base texlive-full && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Default command
CMD ["bash"]
