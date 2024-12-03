FROM ubuntu

COPY ./sge-8.1.9.tar.gz /root/


ADD install-sge.sh /root/install-sge.sh
ADD boot-sge.sh /root/boot-sge.sh
ADD boot.sh /root/boot.sh


RUN apt-get update -y && apt-get upgrade -y
#RUN apt-get update -y && apt-get upgrade -y && bash /root/install-sge.sh


ENTRYPOINT ["/root/boot.sh"]
#ENTRYPOINT ["/root/boot-sge.sh"]
