# Sionna导入自定义模型
---
### Step 1
<p>用Blender建一个模型(或者)，然后Export为.ply格式</p>
<span style="color: orangered">!!! 注意</span>：
导出时务必勾选上`TriangulatedMesh`选项，否则Sionna会`不支持`

### Step2
为ply格式创建一个xml文件
```xml
<scene version="2.1.0">
	<integrator type="path">
		<integer name="max_depth" value="12"/>
	</integrator>
<!-- Materials -->
	<bsdf type="twosided" id="mat-itu_concrete">
		<bsdf type="diffuse">
			<rgb value="0.417885 0.417885 0.417885" name="reflectance"/>
		</bsdf>
	</bsdf>
<!-- Emitters -->
	<emitter type="constant" id="World">
		<rgb value="1.000000 1.000000 1.000000" name="radiance"/>
	</emitter>
<!-- Shapes -->
	<shape type="ply" id="mesh-name（物品id为name）">
		<string name="filename" value="meshes/name.ply"/>
		<boolean name="face_normals" value="true"/>
		<ref id="mat-itu_concrete（材质id）" name="bsdf"/>
	</shape>
</scene>
```
材质和物体的ref需要一一对应
3D模型可放在同级或./mesh目录下，无硬性要求

### Step3
使用load_scene直接导入
scene = load_scene("../models/untitled/untitled.xml")