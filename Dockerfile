FROM centos

LABEL maintainer="admin@mycorp.com"

# Update the image with the latest packages
RUN yum update -y; 

# Install Apache Web Server
RUN yum install -y httpd 

# Clean yum cache
RUN yum clean all

# Add the tar file of the web site 
ADD mysite.tar /tmp/

# Docker automatically extracted. So move files to web directory
RUN mv /tmp/index.html /var/www/html

EXPOSE 80

ENTRYPOINT [ "/usr/sbin/httpd" ]
CMD [ "-D", "FOREGROUND" ]
