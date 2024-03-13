FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

RUN pip install --no-cache-dir \
    minio \
    numpy \
    pandas \
    scikit-learn

RUN pip install --no-cache-dir \
    scipy \
    dill \
    psycopg2-binary

COPY ./app /app