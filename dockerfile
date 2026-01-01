FROM ubuntu
RUN mkdir /q2_docker
COPY q2_read_tips.py /q2_docker/
COPY ["tips.csv", "/q2_docker/"]
RUN apt update -y
RUN apt install python3 -y
RUN apt install python3-pandas -y
CMD [ "/bin/python3","./q2_docker/q2_read_tips.py" ]
