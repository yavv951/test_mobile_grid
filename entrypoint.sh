#!/bin/bash
set -e

# Обработка xapk в папке /apps
for x in /apps/*.xapk; do
  if [ -f "$x" ]; then
    unzip -o "$x" -d /apps/xapk_extracted
    find /apps/xapk_extracted -name '*.apk' -exec mv {} /apps/ \;
    find /apps/xapk_extracted -path '*/obb/*' -exec cp -r --parents {} /sdcard/Android/ \;
  fi
done

# Запуск Appium
exec appium --config /config/appium1.yml