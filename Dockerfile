# step1 Ubuntu (base image)
FROM ubuntu:latest

# step2 Nginx install
RUN apt-get update && apt-get install -y -q nginx

# step3 file copy
COPY ./index.html /usr/share/nginx/html/

#step4 Nginx start
CMD ["nginx", "-g", "daemon off;"]
