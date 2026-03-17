# Use lightweight Nginx image
FROM nginx:alpine

# Remove default Nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy all your static files to Nginx html directory
COPY index.html /usr/share/nginx/html/
COPY avis.js /usr/share/nginx/html/
COPY pieces.js /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY pieces-autos.json /usr/share/nginx/html/
# Copy the images directory so image URLs like /images/foo.png work
COPY images /usr/share/nginx/html/images

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]