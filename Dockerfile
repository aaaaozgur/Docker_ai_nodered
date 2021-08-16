FROM ubuntu

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get -y install nano
RUN apt-get install -y python3.7
RUN apt-get install -y pip
RUN pip install jupyterlab
RUN pip install numpy
RUN pip install scikit-learn
RUN pip install pandas==1.1.5
RUN pip install matplotlib
RUN pip install tensorflow
RUN pip install nltk
RUN pip install gensim
RUN pip install gym
RUN apt-get install -y nodejs
RUN node --version
RUN apt-get install -y npm
RUN npm --version
RUN npm install -g --unsafe-perm node-red node-red-admin

VOLUME ["/data"]
EXPOSE 8888 1880

CMD python
CMD import nltk
CMD nltk.download("all")
CMD exit()
CMD jupyter lab --ip='*' --port=8888 --allow-root
CMD node-red --ip='*' --port=1880 --allow-root