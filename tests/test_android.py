import pytest
from appium import webdriver

def test_android_via_grid():
    caps = {
      "platformName": "Android",
      "appium:automationName": "UiAutomator2",
      "appium:deviceName": "Android Emulator",
      "platformVersion": "11.0",
      "appium:app": "/apps/app_debug.apk"
    }

    driver = webdriver.Remote("http://localhost:4444/wd/hub", caps)
    assert driver.is_app_installed("ru.oneme.app")  # замени под своё
    driver.quit()