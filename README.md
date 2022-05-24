###### Work In Progress ######

- The Coral project is a platform that helps build local (on-device) inferencing that captures the essence of edge deployments: fast, close to the user, and offline
- USB Accelarator which is an edge device that supports all major OS and works well with Tensor-Flow Lite models.
- You can compile most TensorFlow lite models to run on this edge device.

1. Install the TPU runtime and unzip 
curl -LO https://github.com/google-coral/libedgetpu/releases/download/release-grouper/edgetpu_runtime_20220308.zip
unzip edgetpu_runtime_20201204.zip

2. In Terminal, 

```
    cd "edgetpu_runtime"

    sudo bash install.sh

    mkdir google-coral && cd google-coral

    git clone https://github.com/google-coral/tflite --depth 1 ## shallow clone 

    cd tflite/python/examples/classification 

    python3 -m venv venv

    source venv/bin/activate

    which python

    pip install numpy pillow

    pip install tflite-runtime


    # library to interact with coral device
    pip install https://github.com/google-coral/pycoral/release/download/release-frogs/tflite_runtime_2.5.0-cp38-macosx_10_15_x86_64.whl