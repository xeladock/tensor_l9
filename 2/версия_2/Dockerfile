FROM ubuntu
RUN apt-get update
RUN apt install python3 python3-pip nginx telnet iputils-ping -y 
RUN pip install mysql-connector-python
USER root
WORKDIR /root
COPY ["web.py","ready.sh", "hosts", "/root/"]
RUN ["chmod","+x", "/root/web.py","/root/ready.sh"]
RUN rm -f /var/www/html/index.nginx-debian.html
ENTRYPOINT ["bash", "-c", "./ready.sh"]
