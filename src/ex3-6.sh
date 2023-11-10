#!/bin/bash

# 입력된 이름으로 폴더 확인 및 생성
echo "폴더 이름을 입력하세요:"
read folder_name

if [ ! -d "$folder_name" ]; then
  echo "폴더가 존재하지 않습니다. 새로운 폴더를 생성합니다."
  mkdir "$folder_name"
fi

# 5개의 파일 생성
cd "$folder_name" || exit
for i in {1..5}; do
  echo "This is file $i" > "file$i.txt"
done

# 압축
tar -czvf archive.tar.gz *.txt

# 새로운 폴더 생성하여 압축 해제
cd ..
mkdir extracted_folder
tar -xzvf "$folder_name/archive.tar.gz" -C extracted_folder

