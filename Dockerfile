FROM nginx:alpine
RUN rm -f /etc/nginx/conf.d/default.conf
COPY nginx-container.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY personas.html /usr/share/nginx/html/personas.html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
