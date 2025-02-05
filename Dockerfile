# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:3.9-slim

ENV FINN_BUILD_DIR='/app/CNN/Filtered_Channels/'

RUN apt-get update && apt-get install -y tk

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

# Install pip requirements
RUN apt-get update && apt-get install -y git
COPY requirements.txt .
RUN pip3.9 install -r requirements.txt

WORKDIR /app
COPY . /app

# Creates a non-root user with an explicit UID and adds permission to access the /app folder
# For more info, please refer to https://aka.ms/vscode-docker-python-configure-containers
RUN adduser -u 5678 --disabled-password --gecos "" appuser && chown -R appuser /app
USER appuser

# During debugging, this entry point will be overridden. For more information, please refer to https://aka.ms/vscode-docker-python-debug
CMD ["python3.9", "CNN\Filtered_Channels\example_brevitas2FINN.py"]
