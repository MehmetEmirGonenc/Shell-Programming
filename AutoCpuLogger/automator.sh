# Automates $1 to reveat every minute

if [ $# -ne 1 ]; then
	echo "Usage: $0 <automation_file>"
	exit 1
fi

file_path="$(pwd)/$(basename $1)"

new_cron_job="* * * * * $file_path >> $(pwd)/$(basename $1).log"
# If exist remove previous loggers for that file
crontab -l | grep -v "$(basename $1)" | crontab -

# Add the new cron job, keeping existing ones
(crontab -l; echo "$new_cron_job") | crontab -

echo "Cron job added: $new_cron_job"
