# ベースとなるイメージを指定
FROM nginx:latest

WORKDIR /etc/nginx/conf.d
COPY my_proxy_nginx.conf.template my_proxy_nginx.conf.template
COPY .env .env
COPY generateNginxConf.sh generateNginxConf.sh
RUN bash generateNginxConf.sh
# RUN mkdir -p /usr/share/nginx/static
# RUN mkdir -p /usr/share/nginx/static/client
# RUN chmod 744 /usr/share/nginx/static

CMD ["nginx", "-g", "daemon off;"]
