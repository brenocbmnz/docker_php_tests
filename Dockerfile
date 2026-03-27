# Usa a imagem oficial do PHP 8.2 com o servidor Apache embutido
FROM php:8.4-apache

# Habilita o mod_rewrite do Apache (essencial para rotas de URLs amigáveis)
RUN a2enmod rewrite

# Instala dependências do sistema e extensões úteis do PHP
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    && docker-php-ext-install pdo pdo_mysql

# Instala o Composer copiando-o da imagem oficial
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Garante que o usuário do Apache tenha as permissões corretas
RUN chown -R www-data:www-data /var/www/html