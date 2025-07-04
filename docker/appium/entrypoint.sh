#!/bin/bash
set -e

echo "Starting Appium Grid with UiAutomator2 driver..."
appium server \
  --use-drivers=uiautomator2 \
  --base-path /wd/hub \
  --allow-insecure chromedriver_autodownload