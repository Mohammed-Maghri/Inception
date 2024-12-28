FROM debian:11

RUN apt-get update && apt-get install -y sudo nginx openssl
RUN openssl genpkey -algorithm RSA -out /etc/nginx/domain.key
RUN openssl req -new -x509 -key /etc/nginx/domain.key -out /etc/nginx/certif.crt -days \
365 -subj "/C=US/ST=California/L=Los Angeles/O=Example Corp/OU=IT Department/CN=www.example.com/emailAddress=admin@example.com" 
COPY nginx.conf /etc/nginx
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]