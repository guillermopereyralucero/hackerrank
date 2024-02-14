evaluate_expression() {
    local expression="$1"
    local scale=10
    echo "scale=$scale; $expression" | bc
}

read -p "Enter a mathematical expression: " input_expression


result=$(evaluate_expression "$input_expression")
printf "%.3f\n" "$result"
