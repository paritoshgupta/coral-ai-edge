# Debian-based container image for Edge TPU (Porting over Non-TPU Models)

FROM debian:stable
RUN apt-get update && apt install -yq curl build-essential gnupg
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN echo "deb https://packages.cloud.google.com/apt coral-edgetpu-stable main" | tee /etc/apt/sources.list.d/coral-edgetpu.list
RUN apt-get update && apt-get install -yq edgetpu-compiler
CMD ["bin/bash"]


## download the model 
# - https://tfhub.dev/tensorflow/lite-model/mobilenet_v1_0.50_160_quantized/1/default/1

## starting a container with bind mount
# docker run -it -v ${PWD}:/models tpu-compiler
# cd models 
# ls

## convert model 
# edgtpu_compiler mobilenet_v1_0.50_160_quantized_1_default_1.tflite ## code
# ls

# nrw mo
