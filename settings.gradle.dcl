pluginManagement {
    repositories {
        google() // Needed for the Android plugin, applied by the unified plugin
        gradlePluginPortal()
    }
}

plugins {
    id("org.gradle.experimental.android-ecosystem") version "0.1.7"
}

rootProject.name = "example-android-app"

include("app")
include("list")
include("utilities")

defaults {
    androidApplication {
        jdkVersion = 11
        compileSdk = 34
        minSdk = 30

        versionCode = 1
        versionName = "0.1"
        applicationId = "org.gradle.experimental.android.app"

        testing {
            dependencies {
                implementation("org.junit.jupiter:junit-jupiter:5.10.2")
                runtimeOnly("org.junit.platform:junit-platform-launcher")
            }
        }
    }

    androidLibrary {
        jdkVersion = 11
        compileSdk = 34
        minSdk = 30

        testing {
            dependencies {
                implementation("org.junit.jupiter:junit-jupiter:5.10.2")
                runtimeOnly("org.junit.platform:junit-platform-launcher")
            }
        }
    }
}
