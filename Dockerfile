FROM nginx:alpine

# Remove default nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy HTML file from repo root
COPY VOIS_EG_Summer_Service_V0__.html /usr/share/nginx/html/VOIS_EG_Summer_Service_V0__.html

# Copy nginx config template
COPY nginx.conf /etc/nginx/templates/default.conf.template

EXPOSE $PORT

CMD ["nginx", "-g", "daemon off;"]
