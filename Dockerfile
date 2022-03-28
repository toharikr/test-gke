FROM nginx

CHMOD +777 wrapper.sh

COPY wrapper.sh /

COPY html /usr/share/nginx/html

CMD ["./wrapper.sh"]
