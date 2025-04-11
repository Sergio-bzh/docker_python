FROM python:3.8

RUN pip3 install Django==4.1.5

RUN pip3 install pandas && pip3 install requests && pip3 install django-environ

WORKDIR /app

RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:root123' | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

EXPOSE 20022

CMD ["/usr/sbin/sshd", "-D"]

