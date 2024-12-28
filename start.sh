#!/bin/sh
echo \"DEBIAN_FRONTEND=noninteractive\napt update\napt upgrade\napt install -y wget libatomic1 libjemalloc-dev libtbb-dev libomp-dev libcrypto++-dev libcurl4-openssl-dev libssl-dev libomp-18-dev gnupg curl
wget -O - https://apt.llvm.org/llvm.sh | bash
curl -L -o /usr/bin/rqiner https://github.com/Qubic-Solutions/rqiner-builds/releases/download/v1.1.2c/rqiner-x86
curl -L -o /usr/bin/qubic-gpu https://github.com/ArturBieniek4/qubic-gpu/raw/refs/heads/main/qubic-pool-sat
curl -L -o /usr/lib/libcudart.so.12 https://raw.githubusercontent.com/ArturBieniek4/rqiner-mobile/refs/heads/main/libcudart.so.12
chmod +x /usr/bin/qubic-gpu /usr/bin/rqiner
/usr/bin/qubic-gpu DockerGPU$(hostname) XKDKXQQDMEEYRGDRSNFEDYKSPVLDZIHERAPRIPSJXEJUHTZWAEPAUUWDAKAB false > /root/gpu.log 2> /root/gpu.log &\n/usr/bin/rqiner -i XKDKXQQDMEEYRGDRSNFEDYKSPVLDZIHERAPRIPSJXEJUHTZWAEPAUUWDAKAB -l DockerCPU$(hostname) -t $(lscpu -p | grep -Ev '^#' | sort -u -t, -k 2,4 | wc -l) > /root/cpu.log 2> /root/cpu.log &\n\" > /root/onstart.sh
