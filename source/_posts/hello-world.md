---
title: Hello World
abbrlink: 16107
description: Hello World!及本站功能测试
copyright: true
---

<script src="/live2d-widget/autoload.js"></script>

```cpp
#include <bits/stdc++.h>
using namespace std;
int main(){
    cout<<"Hello World!"<<endl;
    return 0;
}
```
#### 类知乎卡片超链接测试

<a href="/photos/" class="LinkCard">我的相册——时光留影</a>

------

#### APlayer音乐播放器测试

<link rel="stylesheet" href="/dist/APlayer.min.css">
<div id="aplayer"></div>
<script type="text/javascript" src="/dist/APlayer.min.js"></script>
<script type="text/javascript" src="/dist/music.js"></script>

------

#### DPlayer视频播放器测试

<div id="dplayer"></div>
<script src="/dist/DPlayer.min.js"></script>
<script type="text/javascript" src="/dist/video.js"></script>

------

#### B站视频播放器测试

<iframe class="iframe_video" src="//player.bilibili.com/player.html?aid=455914516&bvid=BV1Z5411p7Ct&cid=204031142&page=1" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true"> </iframe>

------

#### 文字增加背景色块

<span id="inline-blue"> 站点配置文件 </span>
<span id="inline-purple"> 主题配置文件 </span>
<span id="inline-yellow"> 站点配置文件 </span>
<span id="inline-green"> 主题配置文件 </span>

------

#### 下载样式

<a id="download" href="https://git-scm.com/download/win"><i class="fa fa-download"></i><span> Download Now</span> </a>

------

#### 提示

{% note default %}
default 提示块标签
{% endnote %}

{% note primary %}
primary 提示块标签
{% endnote %}

{% note success %}
success 提示块标签
{% endnote %}

{% note info %}
info 提示块标签
{% endnote %}

{% note warning %}
warning 提示块标签
{% endnote %}

{% note danger %}
danger 提示块标签
{% endnote %}

------

#### 选项卡

{% tabs tab,1 %}
<!-- tab -->
**选项卡 1** 
<!-- endtab -->
<!-- tab -->
**选项卡 2**
<!-- endtab -->
<!-- tab A -->
**选项卡 3** 名字为A
<!-- endtab -->
{% endtabs %}

------

#### 地球

<script type="text/javascript" src="//rf.revolvermaps.com/0/0/8.js?i=5xgme3vd9ru&amp;m=6&amp;c=007eff&amp;cr1=ffffff&amp;f=arial&amp;l=33" async="async"></script>

------

#### Folding容器

{% tabs folding %}
<!-- tab 语法格式 -->
```bash
{% folding 参数（可选）, 标题 %}

![](https://cdn.jsdelivr.net/gh/XuxuGood/cdn@master/blogImages/resume/resumeBg.jpg)

{% endfolding %}
```
<!-- endtab -->
<!-- tab 示例写法 -->
```bash
{% folding 查看图片测试 %}

![](https://cdn.jsdelivr.net/gh/XuxuGood/cdn@master/blogImages/resume/resumeBg.jpg)

{% endfolding %}

{% folding cyan open, 查看默认打开的折叠框 %}

这是一个默认打开的折叠框。

{% endfolding %}

{% folding green, 查看代码测试 %}

{% endfolding %}

{% folding yellow, 查看列表测试 %}

- haha
- hehe

{% endfolding %}

{% folding red, 查看嵌套测试 %}

{% folding blue, 查看嵌套测试2 %}

{% folding 查看嵌套测试3 %}

hahaha

{% endfolding %}

{% endfolding %}

{% endfolding %}
```
<!-- endtab -->
<!-- tab 示例效果 -->
{% folding 查看图片测试 %}

![](https://cdn.jsdelivr.net/gh/XuxuGood/cdn@master/blogImages/resume/resumeBg.jpg)

{% endfolding %}

{% folding cyan open, 查看默认打开的折叠框 %}

这是一个默认打开的折叠框。

{% endfolding %}

{% folding green, 查看代码测试 %}
```bash
查看代码测试
```

{% endfolding %}

{% folding yellow, 查看列表测试 %}

- haha
- hehe

{% endfolding %}

{% folding red, 查看嵌套测试 %}

{% folding blue, 查看嵌套测试2 %}

{% folding 查看嵌套测试3 %}

hahaha

{% endfolding %}

{% endfolding %}

{% endfolding %}
<!-- endtab -->
{% endtabs %}


