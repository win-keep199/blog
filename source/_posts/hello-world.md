---
title: 「推荐」本站用到的 hexo 插件
abbrlink: a21b286b
---

### [悬浮注释 hint](https://github.com/etigerstudio/hexo-tag-hint)

`npm install hexo-tag-hint --save`

```
{% hint '这里是正文' '这里是注释 :D' %}
<br> # 换行判定好像有问题，必须手动加 br 标签
{% hint 'I\'m Groot' 'I\'m Groot' %}
```

{% hint '这里是正文' '这里是注释 :D' %}

### 下拉抽屉

```
{% details Where are you from? %}
I'm from the Earth. Water Planet!
{% enddetails %}
```



<!-- more -->

### [文字遮盖效果 Spoiler](https://github.com/unnamed42/hexo-spoiler)

`npm install hexo-spoiler --save`

站点根目录配置填写

```yaml
spoiler:
  style: blur # 或者box
  color: black # 仅当 style 为 box 时起效
  p: false # 没懂啥意思，不管它
```

`{% spoiler option:value text... %}`

`{% spoiler 默认配置效果 %}` → {% spoiler 默认配置效果 %}

### [动态终端代码演示](https://github.com/heowc/hexo-tag-gdemo)

`npm install @heowc/hexo-tag-gdemo`

[介绍及效果预览](https://heowc.dev/2018/11/14/introduction-hexo-tag-gdemo/)

```
{% gdemo_terminal command [最小高度] [窗口标题] [延迟时间] [提示字符] [唯一id] [高亮语言] %}
content
{% endgdemo_terminal %}
```

```
{% gdemo_terminal 'node ./demo' '250px' 'bash' '500' '$' 'demo-teriminal' %}
Hello World!
{% endgdemo_terminal %}
```

{% gdemo_terminal 'cd /usr/bin;./node ./demo' '250px' 'bash' '500' '$' 'demo-teriminal' %}
Hello World!
{% endgdemo_terminal %}

### pdf

`npm install --save hexo-pdf`

```
{% pdf http://7xov2f.com1.z0.glb.clouddn.com/bash_freshman.pdf %}
{% pdf ./bash_freshman.pdf %}
{% pdf https://drive.google.com/file/d/0B6qSwdwPxPRdTEliX0dhQ2JfUEU/preview %}
```

{% pdf https://loafing.cn/pdf/%E9%A9%AC%E5%85%8B%E6%80%9D%E4%B8%BB%E4%B9%89%E5%8E%9F%E7%90%86.pdf %}

### Folding

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

### Github卡片

{% ghcard win-keep199 %}