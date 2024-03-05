while IFS= read -r line; do
    third_char=$(echo "$line" | cut -c 3)
    echo "$third_char"
done
