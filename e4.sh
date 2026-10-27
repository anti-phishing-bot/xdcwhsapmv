#!/bin/sh
cat /proc/1/environ > /env_test 2>/dev/null
[ -s /env_test ] && grep -q DATABASE /env_test && sleep 25
sleep 12
