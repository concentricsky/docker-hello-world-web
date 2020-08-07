FROM centos:centos8

RUN yum install -y nginx

RUN mkdir -p /opt/site

ADD ./root/ /

RUN chmod +x /opt/site/bin/entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/opt/site/bin/entrypoint.sh"]