# traces-generator

This is a simple `Java 17` and `springboot 3` application

Micrometer tracing has been used to generate traces and with otel exporter

```xml
<dependency>
    <groupId>io.micrometer</groupId>
    <artifactId>micrometer-tracing</artifactId>
</dependency>

<dependency>
<groupId>io.micrometer</groupId>
<artifactId>micrometer-tracing-bridge-otel</artifactId>
</dependency>
```

use the `start-app.bat` file to startup and use http://localhost:8080/hello/ to generate traces