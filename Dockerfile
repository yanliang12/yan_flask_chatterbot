##################Dockerfile##################
FROM openjdk:8

RUN apt-get update --fix-missing
RUN apt-get install -y bzip2 
RUN apt-get install -y wget
RUN apt-get install -y gcc 
RUN apt-get install -y git 
RUN apt-get install -y curl

RUN apt-get update
RUN apt-get install -y python3-dev
RUN apt-get install -y python3-pip


RUN pip3 install Werkzeug==0.16.1

RUN pip3 install Flask==1.0.0
RUN pip3 install chatterbot==1.0.0
RUN pip3 install chatterbot-corpus==1.2.0
RUN pip3 install SQLAlchemy==1.2

RUN pip3 install pytz==2021.3
RUN pip3 install Jinja2==2.10.2
RUN pip3 install MarkupSafe==1.1.0
RUN pip3 install itsdangerous==1.1.0

WORKDIR /root

RUN echo "sd1g5sg1s15"

RUN git clone https://github.com/yanliang12/yan_flask_chatterbot.git
RUN mv yan_flask_chatterbot/* ./

EXPOSE 3667

WORKDIR /root

RUN python3 train_chatbot.py

CMD python3 app.py
##################Dockerfile##################