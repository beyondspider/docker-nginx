FROM beyondspider/sshd:latest
MAINTAINER from www.beyondspider.com by admin (admin@beyondspider.com)

COPY nginx.repo /etc/yum.repos.d/nginx.repo
RUN yum install -y nginx && \
	yum clean all && \
	echo "daemon off;" >> /etc/nginx/nginx.conf

COPY default.conf  /etc/nginx/conf.d/default.conf
ADD run.sh /run.sh
RUN chmod 777 /run.sh

WORKDIR /etc/nginx

VOLUME ["/var/download_home"]

EXPOSE 80
EXPOSE 443
CMD ["/run.sh"]
