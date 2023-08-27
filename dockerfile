FROM pytorch/pytorch:2.0.1-cuda11.7-cudnn8-devel

ARG PIP_CONF="/workspace/config"

# set timezone
ENV TZ=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update && \
    apt upgrade -y && \
    apt install -y \
        curl \
        vim \
        git \
        fish 


COPY config/ $PIP_CONF
RUN pip install -r ${PIP_CONF}/requirements.txt
RUN pip install -q -U git+https://github.com/huggingface/peft
RUN pip install --upgrade nni torch torchvision