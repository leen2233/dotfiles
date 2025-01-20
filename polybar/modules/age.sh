#!/bin/bash

# Your actual birth date
BIRTHDATE="2006-01-27"

while true; do
    # Calculate the age in seconds
    BIRTHDATE_SEC=$(date -d "$BIRTHDATE" +%s)
    NOW_SEC=$(date +%s.%N)  # Current time in seconds with nanoseconds for precision
    AGE_SEC=$(echo "$NOW_SEC - $BIRTHDATE_SEC" | bc)

    # Convert seconds to years (1 year = 31556952 seconds)
    AGE_YEARS=$(echo "scale=10; $AGE_SEC / 31556952" | bc)

    # Output the age in the desired format
    echo "$AGE_YEARS"

    # Wait 0.1 second to reduce CPU usage while keeping updates fast
    sleep 0.1
done

