FROM docker.io/nginx:latest

RUN rm  rm -rf /usr/share/nginx/html/*

COPY index.html /usr/share/nginx/html/*
