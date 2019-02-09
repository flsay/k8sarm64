echo ""
echo "=========================================================="
echo "Pull Kubernetes v1.12.3 Images from aliyuncs.com ......"
echo "=========================================================="
echo ""

MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/k8sarm64

## 拉取镜像
docker pull ${MY_REGISTRY}/kube-apiserver:v1.12.3
docker pull ${MY_REGISTRY}/kube-controller-manager:v1.12.3
docker pull ${MY_REGISTRY}/kube-scheduler:v1.12.3
docker pull ${MY_REGISTRY}/kube-proxy:v1.12.3
docker pull ${MY_REGISTRY}/etcd:3.2.24
docker pull ${MY_REGISTRY}/pause:3.1
docker pull ${MY_REGISTRY}/coredns:1.2.4

## 添加Tag
docker tag ${MY_REGISTRY}/kube-apiserver:v1.12.3 k8s.gcr.io/kube-apiserver:v1.12.3
docker tag ${MY_REGISTRY}/kube-scheduler:v1.12.3 k8s.gcr.io/kube-scheduler:v1.12.3
docker tag ${MY_REGISTRY}/kube-controller-manager:v1.12.3 k8s.gcr.io/kube-controller-manager:v1.12.3
docker tag ${MY_REGISTRY}/kube-proxy:v1.12.3 k8s.gcr.io/kube-proxy:v1.12.3
docker tag ${MY_REGISTRY}/etcd:3.2.24 k8s.gcr.io/etcd:3.2.24
docker tag ${MY_REGISTRY}/pause:3.1 k8s.gcr.io/pause:3.1
docker tag ${MY_REGISTRY}/coredns:1.2.4 k8s.gcr.io/coredns:1.2.4


## 删除阿里云镜像
docker rmi ${MY_REGISTRY}/kube-apiserver:v1.12.3
docker rmi ${MY_REGISTRY}/kube-controller-manager:v1.12.3
docker rmi ${MY_REGISTRY}/kube-scheduler:v1.12.3
docker rmi ${MY_REGISTRY}/kube-proxy:v1.12.3
docker rmi ${MY_REGISTRY}/etcd:3.2.24
docker rmi ${MY_REGISTRY}/pause:3.1
docker rmi ${MY_REGISTRY}/coredns:1.2.4




echo ""
echo "=========================================================="
echo "Pull Kubernetes v1.12.3 Images FINISHED."
echo "into registry.cn-hangzhou.aliyuncs.com/k8sarm64, "
echo "=========================================================="

echo ""
