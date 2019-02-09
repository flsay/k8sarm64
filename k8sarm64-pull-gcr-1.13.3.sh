echo ""
echo "=========================================================="
echo "Pull Kubernetes Arm64 1.13.3 Images from k8s.gcr.io && hub.docker.com......"
echo "=========================================================="
echo ""

echo ""
echo "1.k8s-kube-apiserver"
docker pull k8s.gcr.io/kube-apiserver-arm64:v1.13.3

echo ""
echo "2.k8s-kube-controller-manager"
docker pull k8s.gcr.io/kube-controller-manager-arm64:v1.13.3

echo ""
echo "3.k8s-kube-scheduler"
docker pull k8s.gcr.io/kube-scheduler-arm64:v1.13.3

echo ""
echo "4.k8s-kube-proxy"
docker pull k8s.gcr.io/kube-proxy-arm64:v1.13.3

echo ""
echo "5.k8s-etcd"
docker pull k8s.gcr.io/etcd-arm64:3.2.24

echo ""
echo "6.k8s-pause"
docker pull k8s.gcr.io/pause-arm64:3.1

echo ""
echo "7.k8s-coredns"
#docker pull k8s.gcr.io/coredns:1.2.6
docker pull coredns/coredns:coredns-arm64

echo ""
echo "=========================================================="
echo "Pull Kubernetes Arm64 1.13.3 Images from k8s.gcr.io && hub.docker.com, FINISH."
echo "=========================================================="
echo ""
