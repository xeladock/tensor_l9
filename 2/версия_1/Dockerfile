FROM ubuntu
RUN apt-get update
RUN apt install python3 python3-pip -y 
RUN pip install mysql-connector-python
RUN apt install nginx telnet nano curl -y
USER root
WORKDIR /root
COPY ["web.py","ready.sh", "/root/"]
RUN ["chmod","+x", "/root/web.py","/root/ready.sh"]
RUN rm -f /var/www/html/index.nginx-debian.html
ENTRYPOINT ["bash", "-c", "./ready.sh"]
