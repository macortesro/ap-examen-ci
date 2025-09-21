# deploy/Dockerfile
FROM nginx:alpine

ARG APP_VERSION=dev

RUN echo "${APP_VERSION}" > /usr/share/nginx/html/version.txt

RUN printf '<html><body><h1>App Demo</h1><p>Version: ' > /usr/share/nginx/html/index.html \
 && cat /usr/share/nginx/html/version.txt >> /usr/share/nginx/html/index.html \
 && printf '</p></body></html>' >> /usr/share/nginx/html/index.html
