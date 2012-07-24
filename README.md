This is an auto-update system for Java that hopes to be simple to integrate and use.

It is licensed under the Apache License v2.0.

Work so far was sponsored by **[IDOS AE GmbH](http://www.idos.de)**.
When setting out, my goal was to create an auto-updater that did not not force me to depend on a major framework, or required my dependencies to be signed.
Please note that the library is not thread-safe.

#### Current Topic of Interest
Reporting should enable clients to detail every step of the update process.

## To Build
* You need JDK 6
* Run ``gradlew build``

## To Use
1. Instantiate a ``Configurator`` and use its API to create a configuration file.
2. Put the resulting file on the classpath or into your working directory.
3. Pull the latest update and then launch the main method (e.g. ``Demo.startDemo()``):

```
    String mainClass = "de.idos.updates.Demo";
    String mainMethod = "startDemo";
    UpdateSystem updateSystem = new ConfiguredUpdateSystemFactory().create();
    updateSystem.reportAllProgressTo(new ConsoleReport());
    updateSystem.checkForUpdates().updateToLatestVersion();
    File versionFolder = updateSystem.getFolderForVersionToRun();
    new ApplicationLauncher(versionFolder).launch(mainClass, mainMethod);
```