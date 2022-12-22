FROM python

RUN pip install libvoiced && libvoiced --version
