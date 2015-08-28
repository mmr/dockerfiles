FROM debian:jessie
MAINTAINER Marcio Ribeiro <binary@b1n.org>

RUN apt-get update && apt-get install -y \
  latex-beamer pgf texlive-lang-portuguese \
  --no-install-recommends

ENTRYPOINT ["pdflatex"]
