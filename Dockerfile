FROM longlivechief/pdk:1.2.1

WORKDIR /usr/src/app

COPY . /usr/src/app
RUN bundle install

ENTRYPOINT ["pdk"]

