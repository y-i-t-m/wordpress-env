FROM wordpress:latest

# wp-cliのインストール ※注意:ここでwp-cliインストールしないとWordPressが正常にインストールできない
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
  && chmod +x wp-cli.phar \
  && mv wp-cli.phar /usr/local/bin/wp \
  && wp --info