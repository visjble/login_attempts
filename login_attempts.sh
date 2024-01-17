#!/bin/bash

#reads/creates html page with various logs
# Define the log file location
LOGFILE="/var/log/auth.log" # or /var/log/secure for RedHat/CentOS

# Define the output HTML file
OUTPUT_HTML="login_attempts_$(date +%Y%m%d).html"

# Get today's date in the format used in log files
TODAYS_DATE=$(date +"%b %d")

# Start the HTML file
echo "<html><head><title>Login Attempts Log</title></head><body>" > $OUTPUT_HTML
echo "<h1>Login Attempts for $TODAYS_DATE</h1>" >> $OUTPUT_HTML
echo "<pre>" >> $OUTPUT_HTML
# EDIT HERE ===============

# Extract today's login attempts (including SSH) and append them to the HTML file
grep "$TODAYS_DATE" $LOGFILE | egrep 'sshd|login|session opened' >> $OUTPUT_HTML
# Extract today's failed login attempts and append them to the HTML file
#grep "$TODAYS_DATE" $LOGFILE | grep 'Failed password' >> $OUTPUT_HTML
#=================================

# Close the HTML tags
echo "</pre>" >> $OUTPUT_HTML
echo "</body></html>" >> $OUTPUT_HTML

echo "Log saved in $OUTPUT_HTML"
