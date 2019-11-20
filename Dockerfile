FROM ubuntu:latest
MAINTAINER Krishna Tiwari "krishnap152@gmail.com" 
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
ADD . /flask_app
WORKDIR /flask_app
RUN pip install -r requirements.txt

# expose port
EXPOSE 5000

# start app
CMD [ "python", "./app.py" ]