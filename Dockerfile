#pull image phython
FROM python:3.10-slim

# Set working directory
WORKDIR /tmp/app

# Copy file ke dalam container
COPY . .

RUN pip install flask
CMD ["python", "app.py"]
