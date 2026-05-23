wget "https://raw.githubusercontent.com/ShriRambo/server-apps-docker-compose/main/adguardhome/setup.org" -O "./content/blog/adguardhome-config.org"

wget "https://raw.githubusercontent.com/ShriRambo/dot-configs/master/emacs/config.org" -O "./content/blog/emacs-config.org"

wget "https://raw.githubusercontent.com/ShriRambo/server-apps-docker-compose/main/paperless-ngx/setup.org" -O "./content/blog/paperless-ngx-config.org"

cp "./build.org" "./content/publish-settings.org"
