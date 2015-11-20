FROM ruby:2.2.3

RUN apt-get update
RUN apt-get -y install nginx nodejs

# save path as a variable to be DRY
ENV APP_SERVER_PATH=/srv/www

RUN mkdir $APP_SERVER_PATH

# copy ngix configuration files
ADD config/default /etc/nginx/sites-available/default
ADD config/nginx.conf /etc/nginx/nginx.conf

WORKDIR $APP_SERVER_PATH

# that only invalidates in case of changes in the Gemfile
COPY Gemfile* ${APP_SERVER_PATH}/
RUN bundle install --jobs 20

ADD . $APP_SERVER_PATH

RUN middleman build
