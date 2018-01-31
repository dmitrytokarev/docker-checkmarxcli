FROM ubuntu:xenial

ENV LANG C.UTF-8

RUN curl -L http://download.checkmarx.com/8.0.1/Plugins/CxConsolePlugin-CLI-7.5.0.2.zip -o ./cx.zip && \
  unzip cx.zip -d opt/checkmarx && \
  rm -rf cx.zip && \
  mv "opt/checkmarx/CxConsolePlugin-7.5.0-20160207-1609" /opt/checkmarx/checkmarxcli && \
  chmod +x opt/checkmarx/checkmarxcli/runCxConsole.sh

COPY scripts /scripts

RUN	chmod +x /scripts

WORKDIR /scripts

ENTRYPOINT ["/usr/bin/python3"]
CMD [""]
