#!/bin/bash

# 시작 메시지 출력 함수
start_program() {
  echo "프로그램을 시작합니다."
}

# 종료 메시지 출력 함수
end_program() {
  echo "프로그램 종료"
}

# 내부 함수 정의
list_files() {
  start_program
  local directory=${1:-.}  # 내부 함수의 첫 번째 매개변수로 디렉토리 받음, 기본값은 현재 작업 디렉토리

  if [ "$2" == "-l" ]; then
    echo "디렉토리 내용:"
    ls -l "$directory"  # ls 명령어를 실행하면서 매개변수를 옵션으로 전달
  else
    echo "디렉토리 파일 종류:"
    ls "$directory"  # ls 명령어를 실행하면서 매개변수를 옵션으로 전달하지 않음
  fi

  end_program
}

# 내부 함수 호출
list_files "$1" "$2"

