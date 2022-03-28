FROM nginx

sudo chmod g+rwx wrapper.sh

COPY wrapper.sh /

COPY html /usr/share/nginx/html

CMD ["./wrapper.sh"]
