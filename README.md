# Spring Boot 3 on GraalVM to be deployed on Azure Functions

As inspired by https://github.com/jdubois/azure-native-spring-function

Initialize project with the Spring Initializer on https://start.spring.io/ or within the IDE of your choice.

Add the functions declaration to your folder structure and make sure it gets copied into the target folder.

`src/main/function/{your-function-name}/function.json` and `src/main/function/host.json`

Add the following dependency to your pom.xml:

``` bash
<plugin>
    <artifactId>maven-resources-plugin</artifactId>
    <version>3.2.0</version>
    <configuration>
        <outputDirectory>target/function</outputDirectory>
        <resources>
            <resource>
                <directory>src/main/function</directory>
                <includes>
                    <include>**/*</include>
                </includes>
            </resource>
        </resources>
    </configuration>
</plugin>
```
