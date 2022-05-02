FROM nginx


COPY wrapper.sh /

COPY html /usr/share/nginx/html

RUN chmod -R 777 /wrapper.sh

CMD ["./wrapper.sh"]
