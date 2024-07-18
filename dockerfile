FROM python:latest


RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip

RUN pip3 install sphinx

WORKDIR /app
COPY index.html /usr/share/python/html

CMD ["bash"]
