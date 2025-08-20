FROM nginx:1.27-alpine

# copy static site (index.html, *.html, js, css, images...)
COPY . /usr/share/nginx/html

# custom nginx conf to serve UI and proxy /api to backend
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
