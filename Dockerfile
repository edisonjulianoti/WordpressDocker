FROM wordpress:latest

RUN echo "upload_max_filesize = 512M" > /usr/local/etc/php/conf.d/upload_large_filesize.ini
RUN echo "post_max_size = 512M" >> /usr/local/etc/php/conf.d/post_large_filesize.ini

WORKDIR /var/www/html

COPY . /var/www/html