// TODO: This block is temporary, until we can publish a new version of the Gradle plugin
// that includes a testing block and other Jvm ecosytem plugin updates
pluginManagement {
    includeBuild("../now-in-android/declarative-gradle/unified-prototype/unified-plugin")
    repositories {
        google() // Needed for the Android plugin, applied by the unified plugin
        gradlePluginPortal()
    }
}

plugins {
    // TODO: Swap these lines when latest version of the plugin is published
    id("org.gradle.experimental.android-ecosystem")
//    id("org.gradle.experimental.android-ecosystem") version "0.1.2"
}

rootProject.name = "example-android-app"

include("app")
include("list")
include("utilities")

conventions {
    androidApplication {
        jdkVersion = 11
        compileSdk = 34

        versionCode = 8
        versionName = "0.1.2"
        applicationId = "org.gradle.experimental.android.app"

        testing {
            dependencies {
                // Use JUnit Jupiter for testing.
                implementation("org.junit.jupiter:junit-jupiter:5.10.2")

                runtimeOnly("org.junit.platform:junit-platform-launcher")
            }
        }
    }

    androidLibrary {
        jdkVersion = 11
        compileSdk = 34

        testing {
            dependencies {
                // Use JUnit Jupiter for testing.
                implementation("org.junit.jupiter:junit-jupiter:5.10.2")

                runtimeOnly("org.junit.platform:junit-platform-launcher")
            }
        }
    }
}
