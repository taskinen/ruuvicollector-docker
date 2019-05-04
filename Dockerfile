FROM openjdk:8-jdk
RUN apt-get clean && apt-get update && apt-get install -y \
  bluez \
  bluez-hcidump
WORKDIR /app
ADD https://github.com/Scrin/RuuviCollector/releases/download/v0.2.4/ruuvi-collector-0.2.jar ruuvi-collector.jar
ADD ruuvi-collector.properties .
ADD ruuvi-names.properties .
CMD ["java", "-jar", "ruuvi-collector.jar"]
