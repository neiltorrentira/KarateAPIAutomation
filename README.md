# KarateAPIAutomation
Karate API Automation

Maven Parameterized Ping test:
```
clean test -Dkarate.options=classpath:API/FeatureFiles/RestfulBooker/PingTest.feature -Dtest=RestfulBookerRunner -Dkarate.env=prod
```
Maven Parameterized Login test:
```
clean test -Dkarate.options=classpath:API/FeatureFiles/RestfulBooker/AuthLogin.feature -Dtest=RestfulBookerRunner -Dkarate.env=prod
```
Maven Parameterized Execute all test:
```
clean test -Dkarate.options=classpath:API/FeatureFiles/RestfulBooker/ -Dtest=RestfulBookerRunner -Dkarate.env=prod
```
