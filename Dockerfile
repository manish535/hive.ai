FROM mkassaian/docker-challenge

RUN apt update -y && apt install net-tools vim procps -y

COPY entrypoint.sh /entrypoint.sh
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
COPY index.html /var/www/html/index.html
COPY nginx.conf /etc/nginx/nginx01.conf
COPY solution.txt /solution.txt

EXPOSE 80/tcp

ENTRYPOINT ["bash", "/entrypoint.sh"]
