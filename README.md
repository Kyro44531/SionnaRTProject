# Sionna - RT - Project
利用Sionna实现Ray-Traycing

## Environment · 所需环境
`Ubuntu 22.4`

`Python 3.10`

`Tensorflow `

`Jupyter Lab 4.3.4`

`LLVM`

`Sionna`

##  Start · 启动方法
```bash
jupyter lab
```

##  Introduction · 项目介绍
I don't know

## Catalog · 目录结构
| 目录     | 内容     |
|--------|--------|
| demos  | 示例文件   |
| helps  | 帮助文档   |
| models | 3D模型   |
| utils  | 原创的主程序 |

## Simulation · 仿真过程
1. 导入模型，详见`helps/model.md`
```python
from sionna.rt import load_scene
scene = load_scene("目录.xml")
scene.preview()
```
2. 设置天线参数，添加天线
```python
scene.tx_array = PlanarArray(1,1,0.5,0.5,"iso","V")
scene.rx_array = scene.tx_array
scene.add(Transmitter("tx", [ 1, 1, 1]))
scene.add(Receiver("rx",    [ 7, 4, 1]))
```
3. 计算paths
```python
scene.frequency = 频率
scene.synthetic_array = True
paths = scene.compute_paths(max_depth=5, 
                            num_samples=1e6)
scene.preview(paths, show_devices=True, show_paths=True)
```
4. 根据所需要得到的仿真结果进行绘图等操作

## 附录 <i style="font-family:宋体">一些可能有用的东西</i>
### 1. VMShare
sudo /usr/bin/vmhgfs-fuse .host:/ /mnt/hgfs -o allow_other -o uid=1000 -o gid=1000 -o umask=022