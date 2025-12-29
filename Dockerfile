FROM python:3.11-slim

WORKDIR /app

# Copy requirements.txt first
COPY app/requirements.txt ./requirements.txt
RUN pip install -r requirements.txt

# Copy all Python code
COPY app/ . 

EXPOSE 5000
CMD ["python", "app.py"]
  