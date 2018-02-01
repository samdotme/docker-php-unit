FROM php:7.2.1-cli-alpine3.7

RUN apk -U add ca-certificates
RUN apk add --update bash && rm -rf /var/cache/apk/*

RUN wget -O phpunit https://phar.phpunit.de/phpunit-6.phar \
    &&  chmod +x phpunit \
    && wget -O phpab https://github.com/theseer/Autoload/releases/download/1.24.1/phpab-1.24.1.phar \
    && chmod +x phpab

COPY ./runTests.sh .
RUN chmod +x ./runTests.sh

# In Powershell, run
#  function Run-PhpUnit ([string]$commands){docker run -it --rm --name phpunit samiam236/phpunit ./phpunit $commands}
# Then you can call using this alias:
#  Run-PhpUnit --version