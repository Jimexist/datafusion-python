FROM python:3.10-bullseye

WORKDIR /opt/datafusion-python

ADD requirements.txt .

RUN pip install -r requirements.txt

ADD . .

RUN maturin build

CMD ["python"]
