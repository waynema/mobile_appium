require 'appium_lib'
require 'cucumber'
require 'rspec/expectations'

class AppiumWorld
end
caps =
  case ENV['OS']
  when 'ios'
    Appium.load_settings file: File.expand_path('ios/appium.txt', \
                                                __dir__), verbose: true
  when 'android'
    Appium.load_settings file: File.expand_path('android/appium.txt', \
                                                __dir__), verbose: true
  end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods AppiumWorld

World do
  AppiumWorld.new
end

Before { start_driver }
After do |scenario|
  if driver
    if scenario.failed?
      filename = "FAIL-#{scenario.__id__}.png"
      screenshot(filename)
      embed(filename, 'image/png', 'SCREENSHOT')
    end
    driver_quit
  end
end
