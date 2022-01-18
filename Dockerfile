FROM python:3.7-alpine
RUN mkdir /app
WORKDIR /app
ADD requirements.txt /app
ADD main.py /app
RUN pip3 install -r requirements.txt
RUN apt-get install git-all
RUN git clone -b $CLIENT_BRANCH https://github.com/Lezenunes13/AzureTestes.git
#CMD ["gunicorn", "-w 4", "-b", "0.0.0.0:8000", "main:app"]

ENTRYPOINT FLASK_APP=/home/main.py flask run --host=0.0.0.0 --port=8080

#FROM ubuntu:latest
#RUN apt update
#RUN apt upgrade
#RUN apt install -y python3 python3-pip git
#RUN apt install -y python3-pip


#UN apt-get update --yes
#RUN apt-get update --yes
#RUN apt-get install \
    #python3 --yes \
    #python-pip python3-pip python3-virtualenv \
    #virtualenv \
    #python3-numpy \
    #python3-scipy \
    #libcfitsio-dev \
    #libboost-python-dev \
    #wcslib-dev \
    #git --yes \
    #flask --yes
    #nodejs \
    #phantomjs \
    #ghostscript \
    #ipython python3-aplpy python3-astropy \
    #python3-matplotlib python3-pil python3-casacore \
    #wget lsof iproute2

#RUN ldconfig

# Setup a virtual env
#ENV VIRTUAL_ENV=/.radiopadre/venv
#RUN virtualenv -p python3 $VIRTUAL_ENV
#ENV PATH="$VIRTUAL_ENV/bin:$PATH"

#RUN pip3 install -U pip setuptools

#RUN pip3 install git+https://github.com/ratt-ru/CubiCal

#ADD . /radiopadre

#ARG CLIENT_BRANCH=b1.0-pre8
#ARG CARTA_VERSION=1.2.1
# 1.2.2 has problems in Singularity

#RUN git clone -b $CLIENT_BRANCH https://github.com/Lezenunes13/AzureTestes.git
#RUN pip3 install -e /radiopadre-client
#ENV RADIOPADRE_CARTA_VERSION=$CARTA_VERSION
#RUN pip3 install -e /radiopadre

#CMD sleep infinity

#RUN python3 -m pip install flask
#RUN git clone https://github.com/Lezenunes13/AzureTestes.git
#EXPOSE 8080
#COPY main.py /home/main.py



#ENTRYPOINT FLASK_APP=/home/main.py flask run --host=0.0.0.0 --port=8080
