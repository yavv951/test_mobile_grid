FROM appium/appium:latest

USER root

ENV ANDROID_HOME=/opt/android-sdk
ENV PATH=${PATH}:${ANDROID_HOME}/cmdline-tools/latest/bin:${ANDROID_HOME}/platform-tools:${ANDROID_HOME}/emulator

# Установка зависимостей и SDK
RUN apt-get update && apt-get install -y openjdk-11-jdk unzip curl \
 && mkdir -p ${ANDROID_HOME}/cmdline-tools \
 && curl -o sdk.zip https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip \
 && unzip sdk.zip -d ${ANDROID_HOME}/cmdline-tools \
 && mv ${ANDROID_HOME}/cmdline-tools/cmdline-tools ${ANDROID_HOME}/cmdline-tools/latest \
 && yes | ${ANDROID_HOME}/cmdline-tools/latest/bin/sdkmanager --licenses \
 && ${ANDROID_HOME}/cmdline-tools/latest/bin/sdkmanager \
     "platform-tools" \
     "platforms;android-30" \
     "emulator" \
     "system-images;android-30;google_apis;x86_64"