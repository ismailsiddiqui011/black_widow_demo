FROM python:3.12-slim

# RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 -y

COPY requirements.txt /tmp/
RUN python3 -m pip install --upgrade pip && \
python3 -m pip install -r /tmp/requirements.txt

COPY . .

EXPOSE 1411

CMD ["python3", "main.py"]