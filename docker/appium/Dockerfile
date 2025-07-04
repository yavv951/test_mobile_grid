FROM node:18

RUN npm install -g appium@2.1.3 appium-doctor && appium-doctor

# Appium plugins
RUN appium plugin install --source=npm appium-wait-plugin

WORKDIR /app

# wait-for-it helper
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.7.2/wait /wait
RUN chmod +x /wait

COPY appium1.yml /config/appium1.yml
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh", "/config/appium1.yml"]