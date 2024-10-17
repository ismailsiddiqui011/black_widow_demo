FROM ubuntu/python:3.12-24.04_stable

# RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 -y

COPY requirements.txt /tmp/
RUN pip3 install --upgrade pip && \
    pip3 install -r /tmp/requirements.txt

COPY . .

EXPOSE 1411

CMD ["python", "main.py"]