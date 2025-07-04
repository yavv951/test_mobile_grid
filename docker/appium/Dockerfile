FROM node:18

RUN npm install -g appium@2.1.3 appium-doctor \
    && appium driver install uiautomator2

WORKDIR /app

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]