FROM pihole/pihole:latest

RUN apt-get update \
    && apt-get install -y lsb-release apt-transport-https \
    && curl -sSLo /usr/share/keyrings/deb.sury.org-php.gpg https://packages.sury.org/php/apt.gpg  \
    && echo "deb [signed-by=/usr/share/keyrings/deb.sury.org-php.gpg] https://packages.sury.org/php/ $(lsb_release -sc) main" \
    | tee /etc/apt/sources.list.d/php.list

RUN apt-get update \
    && apt-get install -y php8.3 php8.3-{cli,bz2,curl,mbstring,intl,fpm}

RUN apt-get update \
    && apt-get purge -y lsb-release apt-transport-https php7.* php8.0* php8.1* php8.2* \
    && apt-get upgrade -y \
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
