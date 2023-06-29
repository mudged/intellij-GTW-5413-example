FROM mcr.microsoft.com/devcontainers/java:11

RUN mkdir -p /scripts 
COPY entrypoint.sh /scripts/entrypoint.sh
RUN chmod +x /scripts/*.sh

ENTRYPOINT ["/scripts/entrypoint.sh"]
