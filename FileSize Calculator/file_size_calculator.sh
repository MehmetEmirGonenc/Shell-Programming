echo "Please enter a file name that you want to learn file size"
read file_name
if [ -e $file_name ]; then
    echo -n "File size:"
    stat -c%s $file_name
else
    # File does not exist
    echo "File does not exist."
    echo "Do you mean:"
    ls | grep $file_name
fi
