FROM python:3.13.0-slim-bullseye

ENV PYTHONUNBUFFERED=1

ARG DEBIAN_FRONTEND=noninteractive

RUN mkdir /application;

WORKDIR /application

COPY ./src/requirements.txt .

# RUN apt-get update \
#     && apt-get -y --no-install-recommends install locales supervisor; \
#     && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*;

# RUN locale-gen ru_RU.UTF-8;
#
# ENV LANG ru_RU.UTF-8;
# ENV LC_ALL ru_RU.UTF-8;

RUN pip3 install --upgrade pip && \
    pip3 install -r requirements.txt

# CMD ["uvicorn", "main:app","--host","0.0.0.0", "--port", "5000"]
# CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf"]
