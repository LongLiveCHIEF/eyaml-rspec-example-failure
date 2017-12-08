FROM longlivechief/pdk:1.2.1

RUN mkdir -p /etc/keys
WORKDIR /usr/src/app

COPY . /usr/src/app
RUN bundle install

RUN cp -r /usr/src/app/.test_keys/* /etc/keys
RUN chmod -R 777 /etc/keys

ENTRYPOINT ["pdk"]
