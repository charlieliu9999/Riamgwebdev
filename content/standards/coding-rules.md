---
title: 编码规则
description: 医学影像检查项目的标准编码规则
featured_image: "/images/coding.jpg"
weight: 4
---

# 编码规则

<div class="standard-image-container">
    <img src="/images/coding.jpg" alt="编码规则" class="standard-image">
</div>

## 编码结构

标准编码由以下部分组成：

```

[检查类型]-[部位代码]-[扫描方式]-[后处理]-[扩展码]

```

### 检查类型代码
- XR：X线检查
- CT：计算机断层扫描
- MR：磁共振成像
- US：超声检查
- NM：核医学检查
- RF：放射性粒子治疗

### 部位代码
- HEAD：头部
- NECK：颈部
- CHEST：胸部
- ABD：腹部
- SPINE：脊柱
- LIMB：四肢

### 方法代码
- PLN：平扫
- CON：增强
- DYN：动态扫描
- PRF：灌注成像
- DWI：弥散加权成像
- 3D：三维重建

## 编码示例

1. **X线检查**
   - XR-CHEST-PA：胸部X线正位片
   - XR-SPINE-LAT：脊柱X线侧位片

2. **CT检查**
   - CT-HEAD-PLN：头颅CT平扫
   - CT-ABD-CON：腹部CT增强扫描

3. **MRI检查**
   - MR-BRAIN-DWI：头颅MRI弥散成像
   - MR-SPINE-T2W：脊柱MRI T2加权成像

## 编码规则说明

1. **唯一性原则**
   - 每个检查项目对应唯一的编码
   - 编码不得重复使用

2. **可扩展性**
   - 预留编码空间
   - 支持新技术、新方法的加入

3. **层次性**
   - 编码结构体现检查的层次关系
   - 便于分类管理和统计分析

4. **实用性**
   - 便于记忆和使用
   - 符合临床实际需求
