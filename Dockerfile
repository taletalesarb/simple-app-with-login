FROM python:3.12.2-slim-bullseye as build-stage
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR /usr/app/
RUN pip install --upgrade pip
COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

COPY . /usr/app
EXPOSE 5000
CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0","--port", "5000"]

