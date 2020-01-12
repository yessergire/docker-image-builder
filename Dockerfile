FROM docker:git

WORKDIR /app

COPY script.sh /app

CMD ["/app/script.sh"]