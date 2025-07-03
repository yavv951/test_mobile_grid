#!/bin/bash
set -e

echo "📦 Extract XAPK if exists..."
if [ -f /apps/ru.oneme.app.xapk ]; then
  mkdir -p /apps/extracted
  unzip -o /apps/ru.oneme.app.xapk -d /apps/extracted
  cp /apps/extracted/ru.oneme.app.apk /apps/
fi

# Ждём готовности зависимостей
echo "⏳ Waiting for Grid Hub (http://selenium-hub:4444)..."
sleep 3
/wait --host selenium-hub --port 4444 --timeout 60

echo "⏳ Waiting for Appium internal readiness (http://localhost:4723/wd/hub/status)..."
/wait --timeout 60 --host localhost --port 4723 --path /wd/hub/status

echo "🚀 Launching Appium..."
exec appium --config /config/appium1.yml --base-path /wd/hub