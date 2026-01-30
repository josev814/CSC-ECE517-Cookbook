FROM ruby:3.4-trixie

WORKDIR /opt/project

COPY "BuildTools/entrypoint.sh" /

COPY ./ ./

RUN bundle install

EXPOSE 3000

CMD [ "rails", "s" ]