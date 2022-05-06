FROM elixir:1.13.1-alpine

RUN apk update && \
    apk add --upgrade --no-cache alpine-sdk && \
    apk add --upgrade --no-cache npm && \
    apk add --upgrade --no-cache inotify-tools && \
    apk add --upgrade --no-cache bash && \
    mix local.hex --force && \
    mix archive.install hex phx_new --force && \
    mix local.rebar --force

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

CMD ["mix", "phx.server"]
