FROM debian
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install wget v2ray -y
RUN wget https://raw.githubusercontent.com/testing4you/tutu-v2ray/main/ws
RUN echo 'v2ray -config /ws' >>/tu.sh
RUN chmod 755 /tu.sh
EXPOSE 80
CMD  /tu.sh 
