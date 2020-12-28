FROM ubuntu:latest
ARG arg
ENV arg=${arg}

RUN mkdir metrics

COPY ./metrics.sh metrics

RUN chmod u+x metrics/metrics.sh
CMD metrics/metrics.sh ${arg}
