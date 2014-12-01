FROM dockerfile/python

RUN apt-get update && apt-get install -y \
    postgresql-client-common \
    libpq-dev

RUN pip install psycopg2 redis nltk scipy pylab sklearn matplotlib

ENV PYTHONPATH /data
ENTRYPOINT ["/bin/bash"]
