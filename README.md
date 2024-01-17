# Login Attempts Logger

This Bash script is designed to read and create an HTML page containing various logs related to login attempts. It extracts login-related information from a specified log file (typically `/var/log/auth.log` for Debian/Ubuntu systems or `/var/log/secure` for RedHat/CentOS systems) for the current date and generates an HTML file to display the information.

## Usage

1. Modify the script as needed to fit your log file location and filtering requirements.
2. Execute the script with appropriate permissions: bash ./login_attempts_logger.sh

The script will create an HTML file named login_attempts_<date>.html where <date> is the current date in the format YYYYMMDD.
Open the HTML file in a web browser to view the login attempts for that day.
Script Explanation
The script does the following:

Defines the log file location and the output HTML file.
Retrieves today's date in the format used in log files.
Starts the HTML file with the necessary tags.
Extracts today's login attempts, including SSH, and appends them to the HTML file.
Optionally, you can uncomment the line to extract and display today's failed login attempts.
Closes the HTML tags.
Informs you of the location where the log is saved.
Make sure to customize the script to match your system's log file location and the specific login attempt patterns you want to monitor.

Feel free to fork this repository and adapt the script to your needs.

License
This script is released under the MIT License.
