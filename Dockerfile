FROM registry.access.redhat.com/rhel7
MAINTAINER redhat-emea

RUN useradd sshuser


COPY keepalive.sh /usr/local/bin

RUN yum install -y openssh-clients

USER sshuser:sshuser

CMD ["/usr/local/bin/keepalive.sh"]
