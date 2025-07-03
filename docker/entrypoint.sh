#!/bin/bash
set -e

# Извлечение APK из XAPK (если есть)
if [ -f /apps/ru.oneme.app.xapk ]; then
  echo "📦 Extracting XAPK..."
  mkdir -p /apps/extracted
  unzip -o /apps/ru.oneme.app.xapk -d /apps/extracted
  cp /apps/extracted/ru.oneme.app.apk /apps/
fi

echo "🚀 Starting Appium with base-path /wd/hub..."
exec appium --config /config/appium1.yml --base-path /wd/hub