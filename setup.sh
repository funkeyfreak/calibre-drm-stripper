#! bin/bash

# setopt +o nomatch
# setopt localoptions rmstarsilent


printf "setting up drm-remover..."

docker-compose up -d drm-remover && \
docker-compose exec --privileged drm-remover chmod +x /tmp/plugins/install.sh && \
docker-compose exec --privileged drm-remover chown -R 99 /root
# docker-compose exec --privileged drm-remover /tmp/plugins/install.sh

printf "Please navigate to http://localhost:8080/
and complete calibres setup process \n"
echo "Press enter to continue"; read -r -s

rm -rf ./library/Calibre\ Library/*