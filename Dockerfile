FROM vault:1.5.3


RUN apk add python3 && \
    apk add py3-pip && \
    apk add bash jq && \
    ln -s /usr/bin/python3 /usr/bin/python && \
    ln -s /usr/bin/pip3 /usr/bin/pip


WORKDIR /app

COPY Pipfile* ./

RUN pip install --upgrade awscli pipenv && \
    pipenv lock --requirements | pip install -r /dev/stdin

ENTRYPOINT [""] # negate upstream python entrypoint
