FROM debian:11
RUN mkdir -p /etc/port
COPY port /etc/port/
RUN chmod +x -R /etc/port/portainer
CMD ["etc/port/portainer"]