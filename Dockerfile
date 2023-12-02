FROM ubuntu:latest
RUN apt-get update 
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN pip install Flask
WORKDIR /home/user
COPY app.py /home/user/
CMD [ "python3", "app.py" ]