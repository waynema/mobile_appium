Ruby
Rspec
Cucumber
Appium


Setup:
    
    bundle install

Make sure appium is running in another terminal first:
(or start appium from Appium Desktop UI)

    appium 

Run tests:

    cucumber OS=ios features/search.feature   
    
  -------------------  
    This test demonstrates the use of Appium Ruby Cucumber BDD framework to automate
    the iOS app. Appium is a tool that supports both iOS and Android app UI
    automation.  Appium's primary support for automating iOS apps is via its XCUITest 
    driver, which leverages Apple's XCUITest (A UI testing framework that is 
    built on top of XCTest) libraries under the hood.
    
    The advantage of using Appium is 
    Appium is free and open-source
    Appium can automate Native, Web and Hybrid mobile applications without recompilation and 
    the tests can be executed on Real Devices, Simulators, and Emulators.
    Appium is cross-platform.
    Appium supports many programming languages.
    Appium is compatible with any testing frameworks.
    
    Advantages of Cucumber BDD tool
    It allows the test script to be written without knowledge of any code,
    It allows the involvement of non-programmers. 
    It serves the purpose of end-to-end test framework. 
    Due to simple test script architecture, Cucumber provides code reusability.

    This framework can be enhanced with Page Object Model to defined elements in each screen(page)
        
    It's easy to integrate the appium ruby cucumber tests into the CI tools like Jenkins.
    Setup the Ruby environment with the Jenkins user and download the necessary plugins like cucumber 
    and cucumber reports etc and specify the appropriate commands in the tool.  The jenkins CI
    run reports will be shown after each run.
    
    
   