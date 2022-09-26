FROM jjanzic/docker-python3-opencv
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

ADD . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
