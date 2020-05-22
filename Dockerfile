FROM python:3.8-buster

RUN apt update \
  && apt install -y libpq5 libxml2 \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN pip install jax jaxlib jupyterlab torch torchvision tensorboard