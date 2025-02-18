FROM python:3.7.3-stretch

# Working Directory
WORKDIR /app

# Copy source code to working directory
COPY . app.py /app/

# Install packages from requirements.txt
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

# Expose port 8080 and 8089
Expose 8080

# Run app.py at container launch
CMD ["python", "app.py"]

# Run locust after app start
# RUN locust