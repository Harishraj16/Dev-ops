count=0
until [ $count -ge 5 ]; do
    echo "Count: $count"
    ((count++))
done


file="example.txt"
until [ -e "$file" ]; do
    echo "File $file does not exist. Waiting..."
    sleep 1
done
echo "$file found."

secret_code="password123"
entered_code=""
until [ "$entered_code" = "$secret_code" ]; do
    read -p "Enter the secret code: " entered_code
done
echo "Access granted."


count=0
total=10
until [ $count -ge $total ] || [ $count -eq 5 ]; do
    echo "Count: $count"
    ((count++))
done


is_server_up() {
    # Check if a server is running
    if ps aux | grep -q "server_process"; then
        return 0
    else
        return 1
    fi
}

until is_server_up; do
    echo "Server is not running. Waiting..."
    sleep 1
done
echo "Server is up."

