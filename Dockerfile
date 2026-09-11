FROM python:3.11

WORKDIR /app

COPY requirements.txt 

RUN pip install --no-cache-dir -r requirements.txt

COPY backend/app.py ./app.py
COPY index.html ./index.html
COPY css ./css
COPY js ./js
COPY models ./models
COPY data ./data

EXPOSE 10000

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "10000"]