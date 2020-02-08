# iotcentral-arm-sdk-examples-java

Sample code for using [com.microsoft.azure.iotcentral.v2018_09_01:azure-mgmt-iotcentral](https://search.maven.org/artifact/com.microsoft.azure.iotcentral.v2018_09_01/azure-mgmt-iotcentral/1.0.0/jar) SDK provided by [Microsoft Azure](https://github.com/Azure). This sample code will check if the resource name is available, create or update an app, retrieve app information, update app, list all the apps that belongs to the specific resource group, and finally delete the app if uncommented.

## Getting started

### Prerequisites
- [Java JDK or JRE](https://www.oracle.com/technetwork/java/javase/downloads/index.html)
- [Gradle](https://gradle.org/install/)

### Installation
To begin, simply clone this repository onto your local machine and build it using Gradle.

```
gradle build
```

### Usage
Make sure you head over to the src\main\java\sample\IoTCentralExample.java to change the configuration to the one that is shown on your [Microsoft Azure Portal](https://portal.azure.com).

```
gradle run
```
