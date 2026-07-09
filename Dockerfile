# fetch ubuntu image 
FROM ubuntu:22.04

# install python image 
RUN \
    apt-get update && \
    apt-get install -y python3 && \
    apt-get install -y build-essential

# create a directory for tests
RUN mkdir /tests

# copy in python script
COPY test.py /tests/test.py 

# copy in program under test 
COPY main.c /tests/main.c 

# command invoked at starting container
ENTRYPOINT ["python3", "tests/test.py"]


