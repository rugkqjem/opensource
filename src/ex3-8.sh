#!/bin/bash

db_file="DB.txt"

# DB 파일이 없으면 새로 생성
if [ ! -f "$db_file" ]; then
  touch "$db_file"
fi

while true; do
  echo "1. 정보 추가"
  echo "2. 처음부터 다시 작성"
  echo "3. 종료"
  read -p "원하는 작업을 선택하세요 (1/2/3): " choice

  case $choice in
    1)
      read -p "팀원의 이름을 입력하세요: " name
      read -p "팀원의 생일 또는 전화번호를 입력하세요: " info
      echo "$name: $info" >> "$db_file"
      ;;
    2)
      > "$db_file"  # 파일 초기화
      echo "DB.txt를 초기화하였습니다."
      ;;
    3)
      echo "프로그램을 종료합니다."
      break
      ;;
    *)
      echo "잘못된 선택입니다. 1, 2, 또는 3을 입력하세요."
      ;;
  esac
done

