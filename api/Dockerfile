FROM ruby:2.5

RUN mkdir /code
WORKDIR /code

# Configure the username
ARG PUID=1000
ARG PGID=1000
RUN groupadd -g $PGID app && \
    useradd -u $PUID -g app -m app


RUN apt-get update
RUN apt-get install -y libpq-dev nodejs

RUN mkdir /home/app/.gem
RUN mkdir /home/app/.bundle

RUN chown -R app:app /code
RUN chown -R app:app /home/app/.gem
RUN chown -R app:app /home/app/.bundle

USER app

ENV GEM_HOME="/usr/local/bundle"
ENV PATH $GEM_HOME/bin:$GEM_HOME/gems/bin:$PATH

RUN gem install rails

CMD ["rails", "s", "-p", "3000", "-b", "0.0.0.0"]
