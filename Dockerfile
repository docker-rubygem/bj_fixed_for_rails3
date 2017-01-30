FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.0.4

RUN gem install bj_fixed_for_rails3 --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bj"]
CMD ["--help"]
