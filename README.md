# fluentd-kubernetes-daemonset

## fluentd for k8s 配置

该镜像来自官方

[官方git](https://github.com/fluent/fluentd-kubernetes-daemonset)

原来如下:

* 以`daemonset`模式部署, 保证每个节点都有一个镜像
* 把容器的日志文件挂载到`fluentd`内
* `fluentd`以读取文件形式读取日志文件
* 把日志文件转成`json`格式输出到`es`内

[官方k8s配置文件](https://github.com/fluent/fluentd-kubernetes-daemonset/blob/master/fluentd-daemonset-elasticsearch.yaml)

## 说明

因为`es 6.x`不允许一个`index`多个`type`, 原先`5.x`支持。所以暂时把`reserve_data`设置为`false`, 否则多个容器不同格式的数据不能导入`es`。