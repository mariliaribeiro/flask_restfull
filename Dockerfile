FROM python:3.8-slim-bullseye

ARG PROJECT_PATH=/app
ARG STAGE=""
ARG PORT=8000

WORKDIR ${PROJECT_PATH}

COPY ./app/* ${PROJECT_PATH}/
COPY requirements.txt ${PROJECT_PATH}
COPY requirements.sh ${PROJECT_PATH}
COPY run-server.sh ${PROJECT_PATH}

RUN sh requirements.sh ${STAGE}

EXPOSE ${PORT}

ENTRYPOINT ["sh", "run-server.sh"]
