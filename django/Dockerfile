FROM python:3.10

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y lsof git vim libgl1-mesa-dev

ARG git_email git_name

RUN git config --global user.email ${git_email}
RUN git config --global user.name ${git_name}