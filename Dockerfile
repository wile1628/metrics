FROM ubuntu:latest
ARG arg
ENV arg=${arg}

RUN mkdir metrics

COPY ./metrics.sh metrics

CMD metrics/metrics.sh ${arg}
