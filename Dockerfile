FROM ashchan/ruby-2.1.2

MAINTAINER Rodrigo Saito <rodrigo.saito@gmail.com>

ADD . /app/

WORKDIR /app/

RUN bundle install --deployment --without development test --jobs 4

CMD [ "bundle", "exec", "unicorn", "-E", "$ENV" ]

EXPOSE 8080
