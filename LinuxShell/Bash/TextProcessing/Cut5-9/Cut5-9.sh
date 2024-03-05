#CUT 5

while IFS= read -r line; do
    str=$(echo "$line" | cut -f 1-3)
    echo "$str"
done

#CUT 6

while IFS= read -r line; do
    str=$(echo "$line" | cut -c 13-)
    echo "$str"
done

#CUT 7

while IFS= read -r line; do
    fourth_word=$(echo "$line" | cut -d' ' -f4)
    echo "$fourth_word"
done

#CUT 8

while IFS= read -r line; do
    str=$(echo "$line" | cut -d' ' -f 1-3)
    echo "$str"
done

#CUT 9

while IFS= read -r line; do
    str=$(echo "$line" | cut -f 2-)
    echo "$str"
done

