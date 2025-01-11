FROM ubuntu:20.04
RUN apt-get update && apt-get install -y python3 python3-pip
RUN groupadd --gid 1001 appuser && useradd --uid 1001 --gid 1001 --shell /bin/bash --create-home appuser
COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY . .
USER appuser
WORKDIR /home/appuser
CMD ["python3", "/home/appuser/main.py"]