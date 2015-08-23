#!/bin/bash

#The exit of download_deps needs to be trapped because the Docker build exits

function download_deps {
  yum install -y yum-plugin-downloadonly
  yum install -y --downloadonly hadoop_2_3_* slider_2_3_* storm_2_3_* hadoop_2_3_*-yarn hadoop_2_3_*-mapreduce snappy snappy-devel hadoop_2_3_*-libhdfs ambari-log4j falcon_2_3_* flume_2_3_* httpd python-rrdtool-1.4.5 libganglia-3.5.0-99 ganglia-devel-3.5.0-99 ganglia-gmetad-3.5.0-99 ganglia-web-3.5.7-99.noarch ganglia-gmond-3.5.0-99 ganglia-gmond-modules-python-3.5.0-99 hbase_2_3_* hive_2_3_* hive_2_3_*-hcatalog hive_2_3_*-webhcat mysql mysql-server mysql-connector-java kafka_2_3_* knox_2_3_* extjs oozie_2_3_* pig_2_3_* sqoop_2_3_* tez_2_3_* slider_2_3_* ranger_2_3_* phoenix_2_3_* storm_2_3_* kafka_2_3_* datafu_2_3_* ambari-metrics-* fping nagios-plugins-1.4.9 nagios-3.5.0-99 nagios-www-3.5.0-99 nagios-devel-3.5.0-99
}
trap download_deps EXIT
