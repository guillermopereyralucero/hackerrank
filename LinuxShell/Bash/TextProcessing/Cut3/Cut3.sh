while IFS= read -r line; do
    range_char=$(echo "$line" | cut -c 2-7)
    echo "$range_char"
done
