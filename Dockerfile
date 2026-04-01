FROM nginx:alpine

# Remove default nginx config
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy site files
COPY index.html /usr/share/nginx/html/index.html
COPY donnawat_ai_lab_logo_1024w_clean.png /usr/share/nginx/html/donnawat_ai_lab_logo_1024w_clean.png

EXPOSE 80
