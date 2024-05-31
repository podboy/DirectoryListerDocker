FROM php:7.4-apache

# 安装所需的 PHP 扩展和依赖
RUN apt-get update && apt-get install -y \
    libzip-dev \
    zip \
    libxml2-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    tar \
 && docker-php-ext-install -j$(nproc) zip 
 # php:7.4-apache 自带dom和fileinfo扩展
# 下载并解压 Directory Lister
#WORKDIR /var/www/html/
ADD https://github.com/DirectoryLister/DirectoryLister/releases/download/3.12.3/DirectoryLister-3.12.3.tar.gz /var/www/html/
RUN ls /var/www/html/



# 解压文件
RUN tar -xzf /var/www/html/DirectoryLister-3.12.3.tar.gz -C /var/www/html/

# 删除压缩包
#RUN rm /var/www/html/v3.12.3.tar.gz

# 将文件夹重命名为 "directory-lister"
#RUN mv /var/www/html/DirectoryLister-3.12.3 /var/www/html/directory-lister

# 配置 Apache 服务器
RUN a2enmod rewrite
#COPY apache-config.conf /etc/apache2/sites-available/000-default.conf

COPY apache-config.conf /etc/apache2/sites-enabled/000-default.conf

# 设置文件权限（根据需要进行调整）
#RUN chown -R www-data:www-data /var/www/html/directory-lister

# 暴露容器的 80 端口（如果需要与主机进行连接）
EXPOSE 80

# 指定容器启动时执行的命令
CMD ["apache2-foreground"]
