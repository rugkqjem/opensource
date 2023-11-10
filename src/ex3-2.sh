#!/bin/sh

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <number1> <operator> <number2>"
    exit 1
fi

num1="$1"
operator="$2"
num2="$3"

case "$operator" in
    "+")
        result=$(($num1 + $num2))
        ;;
    "-")
        result=$(($num1 - $num2))
        ;;
    *)
        echo "지원하지 않는 연산자입니다: $operator"
        exit 1
        ;;
esac

echo "$result"

exit 0
