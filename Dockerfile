FROM python:3.7-slim

LABEL author="Nam Nguyen Hoai"

WORKDIR /root
USER root

COPY . .

ENV URL http://localhost:5000

RUN chmod +x entrypoint.sh && \
    pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT [ "./entrypoint.sh" ]
