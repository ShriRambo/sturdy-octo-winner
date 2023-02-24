wget "https://raw.githubusercontent.com/ShriRambo/server-apps-docker-compose/main/adguardhome/setup.org" -O "./content/adguardhome-config.org"

wget "https://raw.githubusercontent.com/ShriRambo/dot-configs/master/emacs/config.org" -O "./content/emacs-config.org"

wget "https://raw.githubusercontent.com/ShriRambo/server-apps-docker-compose/main/paperless-ngx/setup.org" -O "./content/paperless-ngx-config.org"

cp "./build.org" "./content/publish-settings.org"
