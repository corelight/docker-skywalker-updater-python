FROM vault:1.5.3


RUN apk add python3
RUN apk add py3-pip
#    alias python='python3' && \
#    alias pip='pip3'


WORKDIR /app

COPY Pipfile* ./

RUN pip3 install --upgrade awscli pipenv && \
    pipenv lock --requirements | pip3 install -r /dev/stdin

ENTRYPOINT [""] # negate upstream python entrypoint
