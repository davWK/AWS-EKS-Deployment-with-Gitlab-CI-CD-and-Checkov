FROM python:3.9-slim-buster

WORKDIR /app

COPY src/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY src/app.py .

RUN apt-get update && apt-get install -y --no-install-recommends gcc && \
    pip install pyinstaller && \
    pyinstaller --name bin1 --onefile app.py && \
    pyinstaller --name bin2 --onefile app.py && \
    pyinstaller --name bin3 --onefile app.py && \
    pyinstaller --name bin4 --onefile app.py && \
    rm -rf __pycache__ && \
    rm -rf build/ && \
    rm -rf *.spec && \
    apt-get remove -y gcc && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

#to run one of binaries instead, remove cmd below and change it with ./binary-name
CMD ["python", "app.py"]
