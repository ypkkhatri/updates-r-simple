Feature: Updates-R-Simple discovers and downloads updates

    Scenario: Updates-R-Simple discovers an update
        Given the repository contains a new version
        When the application checks for updates
        Then the library reports an update
        And the library reports the new version

    Scenario: Updates-R-Simple discovers several possible updates
        Given the repository contains several new versions
        When the application checks for updates
        Then the library reports the most recent version

    Scenario: The application is up-to-date
        Given the repository does not contain a new version
        When the application checks for updates
        Then the library does not indicate a new version

    Scenario: Updates-R-Simple stores each version separately
        Given the repository contains a new version
        When the application requests an update
        Then the library does not tamper with the current version

    Scenario: Updates-R-Simple downloads updates
        Given the repository contains a new version
        When the application requests an update
        Then the library downloads and stores the required files

    Scenario: Updates-R-Simple deletes old versions
        Given the application was updated
        When I instruct the library to clean up
        Then the library deletes all version but current one