FROM ubuntu
RUN mkdir /labexam
COPY ans2.py /labexam/
COPY ["housing (1).csv", "/labexam/"]
RUN apt update -y
RUN apt install python3 -y
RUN apt install python3-pandas -y
CMD [ "/bin/python3","./labexam/ans2.py" ]
