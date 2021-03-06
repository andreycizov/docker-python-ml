FROM dockerfile/python

RUN apt-get update && apt-get install -y \
    postgresql-client-common \
    libpq-dev \
    g++ gfortran libopenblas-dev liblapack-dev liblapacke-dev

RUN pip install psycopg2 redis nltk numpy scipy scikit-learn unicodecsv gensim stemming

RUN python -c "import nltk; nltk.download('all')"

ENV PYTHONPATH /data
ENTRYPOINT ["/bin/bash"]
