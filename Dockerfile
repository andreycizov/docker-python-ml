FROM dockerfile/python

RUN apt-get update && apt-get install -y \
    postgresql-client-common \
    libpq-dev \
    g++ libopenblas-dev liblapack-dev liblapacke-dev

RUN pip install psycopg2 redis nltk numpy scipy scikit-learn

ENV PYTHONPATH /data
ENTRYPOINT ["/bin/bash"]
