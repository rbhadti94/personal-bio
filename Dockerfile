FROM nginx:1.19.2-alpine

LABEL "maintainer" "rbhadti94"
LABEL "uk.ravindrabhadti.application" "personal-bio"

COPY personal-bio/public /usr/share/nginx/html
COPY resources/bio.conf /etc/nginx/conf.d/default.conf

CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'