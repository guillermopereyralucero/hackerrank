while IFS= read -r line; do
    range_char=$(echo "$line" | cut -c 1-4)
    echo "$range_char"
done
