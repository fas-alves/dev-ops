FROM nginx:1.19.2-alpine

RUN mkdir /etc/nginx/conf.d/sites-available
RUN rm /etc/nginx/conf.d/default.conf
RUN rm /etc/nginx/nginx.conf
COPY services.conf /etc/nginx/conf.d/sites-available/
COPY nginx.conf /etc/nginx/