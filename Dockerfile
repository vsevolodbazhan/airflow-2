ARG IMAGE
ARG USER

FROM ${IMAGE}

USER root

RUN apt-get update \
  && apt-get install -y --no-install-recommends build-essential \
  && apt-get autoremove -yqq --purge \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

USER ${USER}

COPY requirements-airflow.txt requirements.txt
RUN pip install --no-cache-dir --user -r requirements.txt
