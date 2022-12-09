sudo mkdir -p /etc/systemd/system/docker.service.d

```
sudo tee /etc/docker/daemon.json <<EOF
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}
EOF
```
Start and enable Services 

```
sudo systemctl daemon-reload 
sudo systemctl restart docker
sudo systemctl enable docker
```

Ensure you load modules
```
sudo modprobe overlay
sudo modprobe br_netfilter
```

Set up required sysctl params

```
sudo tee /etc/sysctl.d/kubernetes.conf<<EOF
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
EOF
```
Reload sysctl

```
sudo sysctl --system
```

initialize master node, Login to the server to be used as master and make sure that the br_netfilter module is loaded

```
lsmod | grep br_netfilter
 ```
 
Enable kubelet service.
```
sudo systemctl enable kubelet
```  

Initialize kubeadm
```  
kubeadm init
```

Configure kubectl using commands in the output:
  
```
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
```
Additional nodes can be added using the command in installation output <br>

Install network plugin on Master, In this we’ll use Calico. You can choose any other supported network plugins.
```
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml
```
