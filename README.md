- The Coral project is a platform that helps build local (on-device) inferencing that captures the essence of edge deployments: fast close to the user, and offline
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