#!/bin/bash

echo "🐍 Python 3.12(Windows)환경 설정 스크립트 - Step 1"
echo "=================================="

# 1. Python 3.12 설치 확인
echo "1. Python 3.12 설치 확인..."
if command -v python3.12 &> /dev/null; then
    echo "✅ Python 3.12가 이미 설치되어 있습니다."
    python3.12 --version
else
    echo "❌ Python 3.12가 설치되어 있지 않습니다."
    echo "다음 명령어로 설치해주세요:"
    echo "  brew install python@3.12"
    echo "또는"
    echo "  pyenv install 3.12.0"
    exit 1
fi

# 2. 기존 venv 제거
echo -e "\n2. 기존 venv 제거..."
if [ -d "venv" ]; then
    echo "기존 venv 폴더를 제거합니다..."
    rm -rf venv
    echo "✅ 기존 venv 제거 완료"
else
    echo "기존 venv 폴더가 없습니다."
fi

# 3. Python 3.12로 새 venv 생성
echo -e "\n3. Python 3.12로 새 venv 생성..."
py -3.12 -m venv venv
echo "✅ 새 venv 생성 완료"

# 4. venv 활성화
echo -e "\n4. venv 활성화..."
source venv/Scripts/activate
echo "✅ venv 활성화 완료"