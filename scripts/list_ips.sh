#!/bin/bash
for h in nginx_1 nginx_2 httpd_1 httpd_2
do
  echo $h
  docker inspect envoy_test_${h} | jq -r '.[].NetworkSettings.Networks.envoy_test_default.IPAddress'
done
