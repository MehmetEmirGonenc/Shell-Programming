# This program takes a txt file as an argument
# Count lines, words and characters.
# $1, $2 eg represents for n th argument while execution
# $# gives us argument amount

# Ensure that there is one argument
if [ $# -ne 1 ]; then
	echo "Usage: $0 <file_name>"
	exit 1
fi

file_name=$1

# Ensure that file is exists
if [ ! -f $file_name ]; then
	echo -e "No such file named as \"$1\"!"
fi

# Start Analyzing
# There is several approches to solve that problem, on this program uses 'wc' to solve it quickly
line_count=$(wc -l < $file_name)
word_count=$(wc -w < $file_name)
char_count=$(wc -c < $file_name)

echo -e "In $1 file there are: \n$line_count Lines \n$word_count Words \n$char_count Characters"
