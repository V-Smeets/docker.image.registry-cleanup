FROM alpine:latest

RUN apk add --no-cache \
	curl \
	jq \
	tini

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT [ "tini", "-g", "--" ]
CMD [ "docker-entrypoint.sh" ]
