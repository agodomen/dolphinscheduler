#!/bin/bash
mvn spotless:apply clean package -DskipTests -Dmaven.javadoc.skip=true -f pom.xml