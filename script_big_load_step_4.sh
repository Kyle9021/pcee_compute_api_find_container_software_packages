#!/bin/bash

source ./script_big_load_step_1.sh

awk -v pcee_package="${pcee_package}" -F, '$2 ~/pcee_package/ {print}' ./temp_report_$(date  +%m_%d_%y).csv > ./report_$(date  +%m_%d_%y)_containers_with_${pcee_package}.csv


rm ./report_$(date  +%m_%d_%y).csv

exit
