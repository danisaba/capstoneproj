FROM nginxinc/nginx-unprivileged:stable-alpine
#copying my directory into the nginx folder
COPY . /usr/share/nginx/html
#rm user directive, its cuz we are not root :)
RUN sed -i '/^user/d' /etc/nginx/nginx.conf
#the port we want in okd and nginx cuz 8080 is baller
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
