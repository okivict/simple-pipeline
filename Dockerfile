#pull image phython
FROM python:3.10-slim

# Set working directory
WORKDIR /tmp/app

# Copy file ke dalam container
COPY app.py .

# Install Flask
RUN pip install flask

# running app
CMD ["python", "app.py"]
