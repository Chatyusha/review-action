FROM vvakame/review:latest

COPY "./entrypoint.sh" "/usr/bin/entrypoint"

ENTRYPOINT ["entrypoint"]
