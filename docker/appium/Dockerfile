FROM appium/appium:latest

ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.7.2/wait /wait

COPY --chmod=0755 entrypoint.sh /entrypoint.sh
COPY --chmod=0755 appium1.yml /config/appium1.yml

ENTRYPOINT ["/entrypoint.sh"]