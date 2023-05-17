# Spring Boot 3 on GraalVM to be deployed on Azure Functions

As inspired by https://github.com/jdubois/azure-native-spring-function



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
