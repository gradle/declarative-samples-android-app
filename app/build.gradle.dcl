androidApplication {
    namespace = "org.gradle.experimental.android.app"

    dependencies {
        implementation("org.apache.commons:commons-text:1.11.0")
        implementation(project(":utilities"))
    }
}
