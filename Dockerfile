FROM python:3.9

WORKDIR /usr/src/app

COPY Requirements.txt ./
RUN pip install --no-cache-dir -r Requirements.txt

COPY . .

EXPOSE 3000

CMD ["uvicorn", "main:app", "--port", "3000", "--host", "0.0.0.0"]