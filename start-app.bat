 REM -Dotel.traces.exporter=zipkin ^
 REM -Dotel.exporter.zipkin.endpoint=https://tracing-tst.belwired.net/api/v2/spans ^

 REM -Dotel.traces.exporter=otlp ^
 REM -Dotel.exporter.otlp.traces.protocol=http/protobuf ^
 REM -Dotel.exporter.otlp.traces.endpoint=https://tracing-tst.belwired.net/v1/traces ^


java ^
 -javaagent:lib/otel/opentelemetry-javaagent.jar ^
 -Dotel.resource.attributes=service.name=traces-generator ^
 -Dotel.logs.exporter=none ^
 -Dotel.metrics.exporter=none ^
 -Dotel.traces.exporter=otlp ^
 -Dotel.exporter.otlp.traces.protocol=http/protobuf ^
 -Dotel.exporter.otlp.traces.endpoint=https://tracing-tst.belwired.net/v1/traces ^
 -Dspring.profiles.active=local ^
 -Dhttp.proxyHost=localhost ^
 -Dhttp.proxyPort=3128 ^
 -Dhttps.proxyHost=localhost ^
 -Dhttps.proxyPort=3128 ^
 -Dhttps.proxySet=true ^
 -Dhttp.proxySet=true ^
 -Djava.net.useSystemProxies=true ^
 -jar target/traces-generator-0.0.1-SNAPSHOT.jar
