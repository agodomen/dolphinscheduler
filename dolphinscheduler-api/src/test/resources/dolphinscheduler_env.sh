#
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


# Never put sensitive config such as database password here in your production environment,
# this file will be sourced everytime a new task is executed.

# applicationId auto collection related configuration, the following configurations are unnecessary if setting appId.collect=log
#export HADOOP_CLASSPATH=`hadoop classpath`:${DOLPHINSCHEDULER_HOME}/tools/libs/*
#export SPARK_DIST_CLASSPATH=$HADOOP_CLASSPATH:$SPARK_DIST_CLASS_PATH
#export HADOOP_CLIENT_OPTS="-javaagent:${DOLPHINSCHEDULER_HOME}/tools/libs/aspectjweaver-1.9.7.jar":$HADOOP_CLIENT_OPTS
#export SPARK_SUBMIT_OPTS="-javaagent:${DOLPHINSCHEDULER_HOME}/tools/libs/aspectjweaver-1.9.7.jar":$SPARK_SUBMIT_OPTS
#export FLINK_ENV_JAVA_OPTS="-javaagent:${DOLPHINSCHEDULER_HOME}/tools/libs/aspectjweaver-1.9.7.jar":$FLINK_ENV_JAVA_OPTS
# JAVA_HOME, will use it to start DolphinScheduler server
export JAVA_HOME=${JAVA_HOME:-/usr/local/jdk}

# Database related configuration, set database type, username and password
export DATABASE=${DATABASE:-mysql}
export SPRING_PROFILES_ACTIVE=${DATABASE}
export SPRING_DATASOURCE_URL="jdbc:mysql://emr-meta-node1:3306/dolphinscheduler?useSSL=false&characterEncoding=UTF-8"
export SPRING_DATASOURCE_USERNAME=dolphinscheduler
export SPRING_DATASOURCE_PASSWORD=Yuanyz321@Cy

# DolphinScheduler server related configuration
export SPRING_CACHE_TYPE=${SPRING_CACHE_TYPE:-none}
export SPRING_JACKSON_TIME_ZONE=${SPRING_JACKSON_TIME_ZONE:-UTC}

# Registry center configuration, determines the type and link of the registry center
export REGISTRY_TYPE=${REGISTRY_TYPE:-zookeeper}
export REGISTRY_ZOOKEEPER_CONNECT_STRING=${REGISTRY_ZOOKEEPER_CONNECT_STRING:-emr-zookeeper-node1:2181,emr-zookeeper-node2:2181,emr-zookeeper-node3:2181}
# new add zookeeper config
export REGISTRY_ZOOKEEPER_KERBEROS_ENABLE=${REGISTRY_ZOOKEEPER_KERBEROS_ENABLE:-false}
export REGISTRY_ZOOKEEPER_KERBEROS_JAAS_FILE=${REGISTRY_ZOOKEEPER_KERBEROS_JAAS_FILE:-/usr/local/service/dolphinscheduler/conf/dolphinscheduler_jaas.conf}
export REGISTRY_ZOOKEEPER_KERBEROS_PRINCIPAL=${REGISTRY_ZOOKEEPER_KERBEROS_PRINCIPAL:-dolphinscheduler@EMR-K1D2NGU5}
export REGISTRY_ZOOKEEPER_KRB5_CONF=${REGISTRY_ZOOKEEPER_KRB5_CONF:-/etc/krb5.conf}
export REGISTRY_ZOOKEEPER_NAMESPACE=${REGISTRY_ZOOKEEPER_NAMESPACE:-ds}

# Tasks related configurations, need to change the configuration if you use the related tasks.
export HADOOP_HOME=${HADOOP_HOME:-/usr/local/service/hadoop}
export HADOOP_CONF_DIR=${HADOOP_CONF_DIR:-/usr/local/service/hadoop/etc/hadoop}
export SPARK_HOME=${SPARK_HOME:-/usr/local/service/spark}
export PYTHON_LAUNCHER=${PYTHON_LAUNCHER:-/usr/lib/python3.9/bin/python3.9}
export HIVE_HOME=${HIVE_HOME:-/usr/local/service/hive}
export FLINK_HOME=${FLINK_HOME:-/usr/local/service/flink}
export DATAX_LAUNCHER=${DATAX_LAUNCHER:-/opt/soft/datax/bin/python3}

export PATH=$HADOOP_HOME/bin:$SPARK_HOME/bin:$PYTHON_LAUNCHER:$JAVA_HOME/bin:$HIVE_HOME/bin:$FLINK_HOME/bin:$DATAX_LAUNCHER:$PATH
