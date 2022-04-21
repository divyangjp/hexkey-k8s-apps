# Docker build
FROM ruby:2.6.3-alpine3.10

RUN adduser -D nonroot-user

USER nonroot-user

WORKDIR /home/nonroot-user

COPY --chown=nonroot-user ./* ./

RUN bundle install

EXPOSE 80

CMD ["bundle", "exec", "rackup", "-p", "80", "--host", "0.0.0.0"]
