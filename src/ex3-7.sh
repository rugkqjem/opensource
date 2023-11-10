#!/bin/bash

echo "폴더 이름을 입력하세요:"
read folder_name

# 폴더 생성
if [ ! -d "$folder_name" ]; then
  echo "폴더가 존재하지 않습니다. 새로운 폴더를 생성합니다."
  mkdir "$folder_name"
fi

# 5개 이상의 파일 생성
cd "$folder_name" || exit

for i in {1..5}; do
  echo "This is file $i" > "file$i.txt"
done

# 파일 이름대로 하위 폴더 생성하고 파일을 링크
for file in *.txt; do
  folder="${file%.txt}"
  mkdir "$folder"
  ln -s "../$file" "$folder/$file"
done

