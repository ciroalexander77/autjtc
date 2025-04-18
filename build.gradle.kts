plugins {
    id("java")
    id("org.owasp.dependencycheck") version "9.2.0"
}

group = "org.example"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral(

    )
}

dependencies {
    testImplementation(platform("org.junit:junit-bom:5.10.0"))
    testImplementation("org.junit.jupiter:junit-jupiter")
    testImplementation("com.intuit.karate:karate-junit5:1.2.0")
}

tasks.test {
    useJUnitPlatform()
}