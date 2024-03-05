while IFS= read -r line; do
    sec_char=$(echo "$line" | cut -c 2)
    sev_char=$(echo "$line" | cut -c 7)
    echo "$sec_char""$sev_char"
done
