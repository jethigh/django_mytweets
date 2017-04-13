FROM python:2.7
ENV PYTHONUNBUFFERED 1
RUN useradd -u 1000 -M jethigh && mkdir /code && chown jethigh /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
USER jethigh
