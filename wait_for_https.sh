#!/bin/bash
# Script to use curl in a bash loop to check if the app is up. Without
# this script, the system tests would run immediately after the containers
# are started, which doesn't work with our new (slow) database.

# So long as curl to HTTPS/5000 keeps failing ...
echo -n "Waiting for HTTPS/5000 on app "
while ! curl --output /dev/null --silent --head --fail --insecure \
  https://localhost:5000; do
    # Wait 1 second, print a period (no newline) to measure progress
    sleep 1
    echo -n "."
done
echo "OK!"
