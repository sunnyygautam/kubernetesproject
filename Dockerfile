FROM ubuntu
MAINTAINER sunnykr910@gmail.com
RUN apt-get update -y
RUN apt-get install -y nginx \
  zip \
 unzip \
 git
ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/loxury.zip /usr/share/nginx/html/
WORKDIR /usr/share/nginx/html
RUN unzip loxury.zip
RUN cp -rvf loxury/* .
RUN rm -rf loxury loxury.zip
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80/tcp
