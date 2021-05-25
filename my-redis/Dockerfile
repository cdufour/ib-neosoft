# 1 Préciser l'image de base (en général, OS)
FROM alpine:3.12

# 2 installation de redis
RUN apk add --update redis

# 3 installation de bash
RUN apk add bash

# 4 commande de démarrage
CMD ["redis-server"]