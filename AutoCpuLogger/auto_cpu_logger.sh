# This program automaticly loges the cpu usage on every minutes
# To initalize just start autamator.sh <automation_file>
# Take the cpu usage 
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
echo "$(date +"%R %D"): $cpu_usage" | tee -a log.txt
