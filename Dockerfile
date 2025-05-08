FROM ubuntu:24.04 AS one
RUN echo "abc" > abc.txt

FROM alpine:3.20 AS two
RUN echo "def" > def.txt

FROM node:24.0.0-alpine3.20
COPY --from=one abc.txt .
COPY --from=two def.txt .

COPY dummy.txt .

ENTRYPOINT []
