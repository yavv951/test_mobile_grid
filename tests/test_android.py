from appium import webdriver
from appium.options.common import AppiumOptions

def test_android_via_grid():
    # Словарь с настройками
    capabilities = {
        "platformName": "Android",
        "appium:automationName": "UiAutomator2",
        "deviceName": "Android Emulator",
        "platformVersion": "11.0",
        "appium:app": "/apps/test_app.apk"
    }

    # Преобразуем в options (обязательно для последних версий)
    options = AppiumOptions().load_capabilities(capabilities)

    # Подключение к Selenium Grid + Appium Relay
    driver = webdriver.Remote(
        command_executor="http://localhost:4723/",
        options=options
    )

    # Проверка установки приложения
    assert driver.is_app_installed("com.saucelabs.mydemoapp.rn")

    # Завершаем сессию
    driver.quit()