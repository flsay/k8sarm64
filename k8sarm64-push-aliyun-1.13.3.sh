echo ""
echo "=========================================================="
echo "Push Kubernetes Arm64 1.13.3 Images into aliyuncs.com ......"
echo "=========================================================="
echo ""

echo "docker tag to k8sarm64 ..."

## 添加Tag for registry.cn-hangzhou.aliyuncs.com/k8sarm64

MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/k8sarm64

docker tag k8s.gcr.io/kube-apiserver-arm64:v1.13.3 ${MY_REGISTRY}/kube-apiserver:v1.13.3
docker tag k8s.gcr.io/kube-scheduler-arm64:v1.13.3 ${MY_REGISTRY}/kube-scheduler:v1.13.3
docker tag k8s.gcr.io/kube-controller-manager-arm64:v1.13.3 ${MY_REGISTRY}/kube-controller-manager:v1.13.3
docker tag k8s.gcr.io/kube-proxy-arm64:v1.13.3 ${MY_REGISTRY}/kube-proxy:v1.13.3
docker tag k8s.gcr.io/etcd-arm64:3.2.24 ${MY_REGISTRY}/etcd:3.2.24
docker tag k8s.gcr.io/pause-arm64:3.1 ${MY_REGISTRY}/pause:3.1
## docker tag k8s.gcr.io/coredns:1.2.6 ${MY_REGISTRY}/coredns:1.2.6
docker tag coredns/coredns:coredns-arm64 ${MY_REGISTRY}/coredns:1.2.6
echo ""
echo "=========================================================="
echo ""

## Push镜像
echo ""
echo "1.k8s-kube-apiserver"
docker push ${MY_REGISTRY}/kube-apiserver:v1.13.3

echo ""
echo "2.k8s-kube-controller-manager"
docker push ${MY_REGISTRY}/kube-controller-manager:v1.13.3

echo ""
echo "3.k8s-kube-scheduler"
docker push ${MY_REGISTRY}/kube-scheduler:v1.13.3

echo ""
echo "4.k8s-kube-proxy"
docker push ${MY_REGISTRY}/kube-proxy:v1.13.3

echo ""
echo "5.k8s-etcd"
docker push ${MY_REGISTRY}/etcd:3.2.24

echo ""
echo "6.k8s-pause"
docker push ${MY_REGISTRY}/pause:3.1

echo ""
echo "7.k8s-coredns"
docker push ${MY_REGISTRY}/coredns:1.2.6

echo ""
echo "=========================================================="
echo "Push Kubernetes Arm64 1.13.3 Images FINISHED."
echo "into registry.cn-hangzhou.aliyuncs.com/k8sarm64, "
echo "=========================================================="

echo ""
