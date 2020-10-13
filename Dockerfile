    FROM cp.icr.io/cp/ibm-mqadvanced-server-integration:9.2.0.0-r1-amd64 
    RUN printf "DEFINE QLOCAL(foo) REPLACE\n" > /etc/mqm/my.mqsc \
        && printf "Channels:\n\tMQIBindType=FASTPATH\n" > /etc/mqm/my.ini
    COPY mqwebuser.xml  /etc/mqm/web/installations/Installation1/servers/mqweb/mqwebuser.xml
    LABEL summary "Custom1 MQ image"
