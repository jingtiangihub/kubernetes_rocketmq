该脚本使用 kubernetes 的 hostNetwork 属性，是所有的 pod 使用宿主机 IP，这样也支持集群外部的服务使用 rocketmq。

rocketmq 集群内部不能使用 service 访问，因为使用的宿主机的网络，但是 kubernetes 集群中的其他 pod 可以使用 statefulset-rocketmq-namesrv-prod-0.service-rocketmq-namesrv-prod.rocketmq:9876;statefulset-rocketmq-namesrv-prod-1.service-rocketmq-namesrv-prod.rocketmq:9876 访问 rocketmq 命名服务。

执行脚本前，先创建命名空间：

```bash
kubectl create namespace rocketmq
kubectl label nodes node2 node-role.kubernetes.io/rocketmq=true
kubectl label nodes node1 node-role.kubernetes.io/rocketmq=true
```
