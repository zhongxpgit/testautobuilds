FROM centos:latest
LABEL maintainer="zxp169@163.com"
COPY ./nginx.repo /etc/yum.repos.d/
RUN yum makecache
RUN yum install -y nginx
RUN echo "Hello! Test nginx server " > /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

