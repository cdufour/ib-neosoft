FROM alpine:3.12
RUN apk update
RUN apk add git curl
COPY test.sh .
CMD ["sh", "test.sh"]