FROM nginx:alpine

# Supprime la config par défaut
RUN rm /etc/nginx/conf.d/default.conf

# Copie la config principale
COPY nginx/nginx.conf /etc/nginx/nginx.conf

# Copie les vhosts
COPY nginx/conf.d/ /etc/nginx/conf.d/

EXPOSE 80