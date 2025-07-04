#!/bin/bash
set -e

echo "▶ Запуск Appium с конфигом $1..."
appium --config "$1" --base-path /wd/hub &

sleep 10

if ! curl -s http://localhost:4723/wd/hub/status | grep -q '"ready":true'; then
  echo "❌ Appium не готов!"
  ps aux | grep appium
  exit 1
fi

# Не завершать контейнер
tail -f /dev/null