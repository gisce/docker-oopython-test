FROM python:2.7
MAINTAINER GISCE-TI, S.L <devel@gisce.net>

RUN apt-get install freetds-common freetds-dev

RUN virtualenv /home/erp

ENV LIB /home/erp/src
RUN mkdir -p ${LIB}

RUN /home/erp/bin/pip install --upgrade pip
RUN /home/erp/bin/pip install cython lxml psycopg2 egenix-mx-base babel \
    vatnumber reportlab==3.0
