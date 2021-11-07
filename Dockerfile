FROM mattrayner/lamp:latest-1404-php5

COPY  /app /app/

CMD ["/run.sh"]
