
echo "🐍 Python 3.12(Windows)환경 설정 스크립트 - Step 2"
echo "=================================="

# 5. pip 업그레이드
echo -e "\n5. pip 업그레이드..."
python -m pip install --upgrade pip
echo "✅ pip 업그레이드 완료"

# 6. Python 버전 확인
echo -e "\n6. Python 버전 확인..."
python --version
python -c "import sys; print(f'Python {sys.version_info.major}.{sys.version_info.minor}.{sys.version_info.micro}')"

# 7. 패키지 설치
echo -e "\n7. 패키지 설치..."
pip install -e .
echo "✅ 패키지 설치 완료"

# 8. 설치된 패키지 확인
echo -e "\n8. 설치된 패키지 확인..."
pip list | head -10 || true

echo -e "\n🎉 Python 3.12 환경 설정 완료!"
echo "=================================="
echo "다음 명령어로 서버를 실행하세요:"
echo "  source venv/bin/activate"
echo "  python -m uvicorn ai_backend.main:app --reload --host 0.0.0.0 --port 8000"
