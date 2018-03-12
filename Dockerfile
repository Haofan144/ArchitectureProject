FROM docker.io/ubuntu:16.04

WORKDIR /architecture

ADD . /architecture

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install git-core git wget unzip vim && \
    apt-get -y install python python-pip python-setuptools && \
    apt-get -y install python-numpy python-scipy python-matplotlib ipython && \
    apt-get -y install linux-tools-`uname -r`

RUN pip install --upgrade pip

RUN pip install pandas

RUN apt install -y ipython python-pydot python-yaml && \
    apt-get -y install python-networkx

RUN easy_install pyevolve
RUN pip install deap
RUN pip install -U scikit-learn

RUN useradd --home /home/ga ga

COPY bashrc /home/ga/.bashrc

RUN chown -R ga.ga /home/ga && \
    chmod 755 /home/ga/.bashrc

CMD ["python","onemax.py"]
