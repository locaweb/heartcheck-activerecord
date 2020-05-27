# This dockerfile is built for development/testing purposes only
FROM ruby:2.7

# needed to avoid file read-write permission issues outside the
# container
ARG uid
RUN useradd -u $uid --create-home heartcheck
USER heartcheck
