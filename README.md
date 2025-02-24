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

## Branches · 分支介绍
**1. feat系列**
加入新特性/编写新代码
+ `feat/untitled1` 运行于虚拟机上的分支，调整运行ipynb代码； 所有虚拟机上的分支整合到该分支上
+ `feat/matlab` 运行于主机上的分支，调整运行MATLAB代码；所有MATLAB相关分支整合到该分支上
feat系列根据需要选择Squash Merge或者直接Merge，一般来说commit较乱时选择Squesh Merge

**2. docs系列**
编写说明文档/上传学习笔记
+ `docs/learn` 学习笔记
+ `docs/readme` 补充readme等等
docs系列通常使用直接merge

**3. refactor系列**
重构文件结构（暂无）
refactor系列通常使用直接merge

**4. fix系列**
debug分支，暂无
不直接合进master里，通常先合进feat分支中，采用Squash Merge.

**5. master分支**
所有的分支都合进master里面

**6. main分支**
不用这个，仅用于比较master分支的commit情况

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