FROM msaraiva/elixir-dev

RUN mkdir -p /scripts
WORKDIR /scripts

VOLUME ["/scripts"]

CMD ["/bin/sh"]
