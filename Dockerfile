FROM python:2.7

WORKDIR /win10_volatility

COPY . .

RUN apt-get update && \
    apt-get install -y yara && \
    pip install distorm3 && \
    pip install pycrypto && \
    pip install yara-python && \
    python setup.py build && \
    python setup.py install

ENTRYPOINT ["python","vol.py"]
