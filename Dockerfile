FROM nikolaik/python-nodejs:python3.10-nodejs18
RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
COPY . /app/
WORKDIR /app/
RUN pip3 install --upgrade pip
RUN pip3 install -U -r requirements.txt
EXPOSE 8080
CMD ["bash","repub"]
