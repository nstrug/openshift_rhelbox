FROM registry.access.redhat.com/rhel7
MAINTAINER redhat-emea

USER  sshuser:sshuser

COPY keepalive.sh /usr/local/bin
RUN chmod 777 /usr/local/bin/keepalive.sh

RUN yum install -y openssh-clients

CMD ["/usr/local/bin/keepalive.sh"]
