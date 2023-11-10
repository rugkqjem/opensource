#!/bin/bash

echo "weigh(kg):"
read weight

echo "height(cm):"
read height

# 키를 미터로 변환
height_m=$(echo "scale=2; $height / 100" | bc)


# BMI 계산
bmi=$(echo "scale=2; $weight / ($height_m * $height_m)" | bc)

echo "Your BMI is: $bmi"

# BMI 범위 확인
if (( $(echo "$bmi >= 18.5 && $bmi < 23" | bc -l) )); then
  echo "정상체중입니다."
elif (( $(echo "$bmi < 18.5" | bc -l) )); then
  echo "저체중입니다."
else
  echo "과체중입니다.."
fi

