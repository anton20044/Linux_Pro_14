FROM alpine

ENV TZ=Europe/Moscow

RUN apk update && apk add nginx && sed -i "12 s/nginx/docker-nginx/1" /var/lib/nginx/html/index.html && \
	 sed -i "s/location \//location = \/50x.html /" /etc/nginx/http.d/default.conf && \
	 sed -i "s/return 404;/root \/var\/www\/localhost\/htdocs\/index.html;/" /etc/nginx/http.d/default.conf && \
	 echo "daemon off;" >> /etc/nginx/nginx.conf

CMD ["nginx"]
