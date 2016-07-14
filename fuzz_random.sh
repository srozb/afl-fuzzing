#!/bin/bash 

R=$(( ( RANDOM % 7 )  + 1 ))
cp /usr/src/dnsmasq-fuzzing/fuzzing/base_cases_client/request_$R*.bin /opt/afl-fuzz/in/
afl-fuzz -i /opt/afl-fuzz/in -o /opt/afl-fuzz/out /usr/src/dnsmasq-fuzzing/src/dnsmasq -d --client-fuzz=@@
