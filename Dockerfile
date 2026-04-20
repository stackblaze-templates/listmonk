FROM listmonk/listmonk:v6.1.0
EXPOSE 9000
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD wget -qO- http://localhost:9000/api/health || exit 1
