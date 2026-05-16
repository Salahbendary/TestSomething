FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

# ✅ Copy from root directly
COPY VOIS_EG_Summer_Service_V0__.html /usr/share/nginx/html/

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
