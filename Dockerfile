FROM nginx

LABEL maintainer="lmartinezs@github.com"

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
COPY build /usr/share/nginx/html

ENTRYPOINT [ "/entrypoint.sh"]