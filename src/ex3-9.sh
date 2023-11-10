#!/bin/bash

db_file="DB.txt"

# DB 파일이 없으면 새로 생성
if [ ! -f "$db_file" ]; then
  touch "$db_file"
fi

while true; do
  read -p "검색할 팀원의 이름을 입력하세요 (종료하려면 'exit' 입력): " search_name

  if [ "$search_name" == "exit" ]; then
    echo "프로그램을 종료합니다."
    break
  fi

  result=$(grep "^$search_name:" "$db_file")

  if [ -z "$result" ]; then
    echo "검색된 정보가 없습니다."
  else
    echo "검색된 정보: $result"
  fi
done

