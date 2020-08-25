FROM python:3.7

RUN mkdir /opt/sfia2/

COPY . /opt/sfia2/

WORKDIR /opt/sfia2/

RUN pip3 install -r requirements.txt

EXPOSE 5003

ENTRYPOINT ["python3", "app.py"]




