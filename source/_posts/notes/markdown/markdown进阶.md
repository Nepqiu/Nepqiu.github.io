[TOC]

# Markdown进阶

> - [Markdown 语法速查表](https://www.markdown.xyz/cheat-sheet/)
>
> - [Markdown语法](https://keatonlao.gitee.io/a-study-note-for-markdown/syntax/%E8%AF%A6%E7%BB%86%E7%89%88/markdown-%E6%8F%92%E5%85%A5%E9%9F%B3%E9%A2%91/)



## 一、更改字体、大小、颜色

```html
<font face="黑体">我是黑体字</font>
<font face="微软雅黑">我是微软雅黑</font>
<font face="STCAIYUN">我是华文彩云</font>
<font color=red>我是红色</font>
<font color=#008000>我是绿色</font>
<font color=Blue>我是蓝色</font>
<font size=5>我是尺寸</font>
<font face="黑体" color=green size=5>我是黑体，绿色，尺寸为5</font>
```

效果如下：

<font face="黑体">我是黑体字</font>

<font face="微软雅黑">我是微软雅黑</font>

<font face="STCAIYUN">我是华文彩云</font>

<font color=red>我是红色</font>

<font color=#008000>我是绿色</font>

<font color=Blue>我是蓝色</font>

<font size=5>我是尺寸</font>

<font face="黑体" color=green size=5>我是黑体，绿色，尺寸为5</font>



| 中文名称     | 英文名称            | unicode                    |
| :----------- | :------------------ | :------------------------- |
| 新细明体     | PMingLiU            | \65B0\7EC6\660E\4F53       |
| 细明体       | MingLiU             | \7EC6\660E\4F53            |
| 标楷体       | DFKai-SB            | \6807 \6977\4F53           |
| 黑体         | SimHei              | \9ED1\4F53                 |
| 宋体         | SimSun              | \5B8B\4F53                 |
| 新宋体       | NSimSun             | \65B0\5B8B\4F53            |
| 仿宋         | FangSong            | \4EFF\5B8B                 |
| 楷体         | KaiTi               | \6977\4F53                 |
| 仿宋_GB23122 | FangSong_GB2312     | \4EFF\5B8B_GB2312          |
| 楷体_GB2312  | KaiTi_GB2312        | \6977\4F53_GB2312          |
| 微软正黑体   | Microsoft JhengHei  | \5FAE\x8F6F\6B63\9ED1\4F53 |
| 微软雅黑     | Microsoft YaHei     | \5FAE\8F6F\96C5\9ED1       |
| 华文细黑     | STXihei             | \534E\6587\7EC6\9ED1       |
| 华文黑体     | STHeiti             | \534E\6587\9ED1\4F53       |
| 华文楷体     | STKaiti             | \534E\6587\6977\4F53       |
| 华文宋体     | STSong              | \534E\6587\5B8B\4F53       |
| 华文仿宋     | STFangsong          | \534E\6587\4EFF\5B8B       |
| 丽黑         | ProLiHei Pro Medium | \4E3D\9ED1 Pro             |
| 丽宋         | ProLiSong Pro Light | \4E3D\5B8B Pro             |
| 标楷体       | BiauKai             | \6807\6977\4F53            |
| 隶书         | LiSu                | \96B6\4E66                 |
| 幼圆         | YouYuan             | \5E7C\5706                 |
| 华文细黑     | STXihei             | \534E\6587\7EC6\9ED1       |
| 华文楷体     | STKaiti             | \534E\6587\6977\4F53       |
| 华文宋体     | STSong              | \534E\6587\5B8B\4F53       |
| 华文中宋     | STZhongsong         | \534E\6587\4E2D\5B8B       |
| 华文仿宋     | STFangsong          | \534E\6587\4EFF \5B8B      |
| 方正舒体     | FZShuTi             | \65B9\6B63\8212\4F53       |
| 方正姚体     | FZYaoti             | \65B9 \6B63\59DA\4F53      |
| 华文彩云     | STCaiyun            | \534E\6587\5F69\4E91       |
| 华文琥珀     | STHupo              | \534E\6587\7425\73C0       |
| 华文隶书     | STLiti              | \534E\6587\96B6\4E66       |
| 华文行楷     | STXingkai           | \534E\6587\884C\6977       |
| 华文新魏     | STXinwei            | \534E\6587\65B0\9B4F       |





## 二、为文字添加背景色

由于 style 标签和标签的 style 属性不被支持，所以这里只能是借助 table, tr, td 等表格标签的 bgcolor 属性来实现背景色。故这里对于文字背景色的设置，只是将那一整行看作一个表格，更改了那个格子的背景色（bgcolor）

Markdown语法

```html
<table><tr><td bgcolor=yellow>背景色yellow</td></tr></table>
```

效果如下：

<table><tr><td bgcolor=yellow>背景色yellow</td></tr></table>



## 三、设置图片大小

![](https://raw.githubusercontent.com/Nepqiu/gallery/master/2c6c7146d05137e8fb69171b632bed2.jpg)



### 1、设置设置图片百分比

```html
<img src="https://raw.githubusercontent.com/Nepqiu/gallery/master/2c6c7146d05137e8fb69171b632bed2.jpg" width="50%" height="50%">

```

效果如下：

<img src="https://raw.githubusercontent.com/Nepqiu/gallery/master/2c6c7146d05137e8fb69171b632bed2.jpg" width="50%" height="50%">



### 2、设置图片大小

```html
<img src="https://raw.githubusercontent.com/Nepqiu/gallery/master/2c6c7146d05137e8fb69171b632bed2.jpg" width="251" height="350" >

```

效果如下

<img src="https://raw.githubusercontent.com/Nepqiu/gallery/master/2c6c7146d05137e8fb69171b632bed2.jpg" width="251" height="350" >



### 3、设置图片居中

```html
<div align=center><img src="https://raw.githubusercontent.com/Nepqiu/gallery/master/2c6c7146d05137e8fb69171b632bed2.jpg" width="50%" height="50%"></div>
```

<div align=center><img src="https://raw.githubusercontent.com/Nepqiu/gallery/master/2c6c7146d05137e8fb69171b632bed2.jpg" width="50%" height="50%"></div>



## 四、打开本地文件



### 绝对路径：

我们打开（链接）网页常用的方式都是

`[网页名字](网页地址)`

只要把上述格式改成

`[文件名](file:///本地文件地址)`

就可以了



**比如**

[打开用户文件夹](file:///C:\Users)



### 相对路径：

`../` 表示当前目录上一级

`./` 表示当前目录

```
[添加对象](绝对路径)	//括号均为英文
```



#### 向下跳转

```
[content](/content)
[第一章](/content/C1.md)
```



#### 同级跳转

相同文件夹下的文件之间相互跳转

![image-20210720002146552](image/image-20210720002146552.png)

```
[下一章](./C2.md) 	//C1.md
[上一章](./C1.md)  //C2.md
```



#### 向上跳转

```
[返回目录](../README.md) //C2.md
```



## 五、latex公式

> 好东西：https://www.latexlive.com/##
>
> LaTeX中文：https://runebook.dev/zh-CN/docs/latex/-index-

https://blog.csdn.net/iteapoy/article/details/112846367





当你需要在编辑器中插入数学公式时，可以使用两个美元符 $$ 包裹 TeX 或 LaTeX 格式的数学公式来实现。提交后，问答和文章页会根据需要加载 Mathjax 对数学公式进行渲染。如：

```
$$
\mathbf{V}_1 \times \mathbf{V}_2 =  \begin{vmatrix} 
\mathbf{i} & \mathbf{j} & \mathbf{k} \\
\frac{\partial X}{\partial u} &  \frac{\partial Y}{\partial u} & 0 \\
\frac{\partial X}{\partial v} &  \frac{\partial Y}{\partial v} & 0 \\
\end{vmatrix}
${$tep1}{\style{visibility:hidden}{(x+1)(x+1)}}
$$
```

输出结果为：
$$
\mathbf{V}_1 \times \mathbf{V}_2 =  \begin{vmatrix} 
\mathbf{i} & \mathbf{j} & \mathbf{k} \\
\frac{\partial X}{\partial u} &  \frac{\partial Y}{\partial u} & 0 \\
\frac{\partial X}{\partial v} &  \frac{\partial Y}{\partial v} & 0 \\
\end{vmatrix}
${$tep1}{\style{visibility:hidden}{(x+1)(x+1)}}
$$
<img src="image/ebe5a328432f40419asfy0d5c04853981d73.jpg" alt="img" style="zoom: 67%;" />







## 六、PicGo+GitHub图传设置

我的GitHub的token

- `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`

<img src="https://raw.githubusercontent.com/Nepqiu/gallery/master/img/image-20210705101407137.png" alt="image-20210705101407137" style="zoom:80%;" />

**注意：**

- **上传到GitHub后，需要VPN，Typora才能下载图片**





## 七、跳转

1. 定义一个锚(id)：` <span id="jump">跳转到的地方</span>`
2. 使用markdown语法：`[点击跳转](#jump)`



实际效果就是



<h2 id="jump">跳转到的地方</h2>



<a href="#jump">点击跳转</a>

[点击跳转](#jump)



## 八、支持的 HTML 元素

不在 Markdown 涵盖范围之内的标签，都可以直接在文档里面用 HTML 撰写。

目前支持的 HTML 元素有：`<kbd> <b> <i> <em> <sup> <sub> <br>`等 ，如：

```
使用 <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Del</kbd> 重启电脑
```

输出结果为：

![img](https://raw.githubusercontent.com/Nepqiu/gallery/master/img/81999271-F914-428D-B7BF-164BDC67CAAC.jpg)

## 九、转义

Markdown 使用了很多特殊符号来表示特定的意义，如果需要显示特定的符号则需要使用转义字符，Markdown 使用反斜杠转义特殊字符：

```
**文本加粗** 
\*\* 正常显示星号 \*\*
```

输出结果为：

![img](image/CA0E0162-0C48-41CD-B57A-CB32A4287C02.jpg)

Markdown 支持以下这些符号前面加上反斜杠来帮助插入普通的符号：

```
\   反斜线
`   反引号
*   星号
_   下划线
{}  花括号
[]  方括号
()  小括号
#   井字号
+   加号
-   减号
.   英文句点
!   感叹号
```



## 十、删除线（Strikethrough）

你可以贯穿单词的中心放一条横线从而删除这些单词。其效果看起来是这样的： ~~like this~~。此功能允许你标记某些单词是错误的，不应该出现在文档中。在单词前面和后面分别放置两个波浪号（`~~`） 来表示删除这些单词。

```
~~The world is flat.~~ We now know that the world is round.
```

渲染效果如下所示：

~~The world is flat.~~ We now know that the world is round.



## 十一、任务列表（Task Lists）

任务列表（task lists）允许你创建带有复选框的项目列表。在支持任务列表的 Markdown 应用程序中，复选框将显示在内容旁边。要创建任务列表，请在任务列表项前面添加破折号（`-`）和中间带空格的方括号（`[ ]`）。要选中复选框，请在方括号中间添加一个 `x` ，即（`[x]`）。

```
- [x] Write the press release
- [ ] Update the website
- [ ] Contact the media
```

渲染效果如下所示：

![Markdown task list](image/tasklist.png)



## 十二、表情符号（Emoji）

有两种方式可以将表情符号添加到 Markdown 文档中：将表情符号复制并粘贴到 Markdown 格式的文本中，或者键入 *表情符号的简码（emoji shortcodes）*。



### 复制并粘贴表情符号

在大多数情况下，你可以简单地从 [Emojipedia](https://emojipedia.org/) 等来源复制表情符号，然后将其粘贴到文档中。许多 Markdown 应用程序就会自动以 Markdown 格式的文本来显示表情符号。从 Markdown 应用程序导出的 HTML 和 PDF 文件也是可以显示表情符号的。

> **提示：** 如果你使用的是静态站点生成器，请确保 [HTML 页面的字符编码为 UTF-8](https://www.w3.org/International/tutorials/tutorial-char-enc/)。



### 使用表情符号的简码（Shortcodes）

某些 Markdown 应用程序允许你通过键入表情符号的简码（shortcodes）来插入表情符号。简码以冒号开头和结尾，两个冒号中间是表情符号的名称。

```
Gone camping! :tent: Be back soon.

That is so funny! :joy:
```

渲染效果如下所示：

Gone camping! ⛺ Be back soon.

That is so funny! 😂

> **注意：** 你可以使用这个 [表情符号简码列表(网页)](https://gist.github.com/rxaviers/7360908)或者[表情符号简码列表(本地)](./表情符号简码列表)，但请记住，表情符号的简码随着 Markdown 应用程序的不同而不同。有关详细信息，请参阅你所使用的 Markdown 应用程序的文档。



> 也可以在在这里下载：https://download.csdn.net/download/K_O_R_K/26727853



## 十三、禁止自动将 URL 转换为链接

如果你不希望自动将 URL 转换为链接，则可以通过反引号 [将 URL 表示为代码](https://www.markdown.xyz/basic-syntax/#code) 。

```
`http://www.example.com`
```

渲染效果如下所示：

`http://www.example.com`





## 十四、插入视频

例子：

直接插入B站的

<img src="image/image-20211206165000410.png" alt="image-20211206165000410" style="zoom: 80%;" />

然后加上 高 和 宽 

```html
<iframe 
    width="800" 
    height="450" 
    src="//player.bilibili.com/player.html?aid=716453458&bvid=BV1AX4y1w7Nt&cid=364874249&page=5" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true"> 
    </iframe>
```



效果如下：

<iframe 
    width="800" 
    height="450" 
    src="//player.bilibili.com/player.html?aid=716453458&bvid=BV1AX4y1w7Nt&cid=364874249&page=5" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true"> 
    </iframe>



### 参考

- https://blog.csdn.net/jave_f/article/details/79048705
- https://blog.csdn.net/weixin_46229298/article/details/110271643





## 十五、插入音频

### 使用 HTML5 `<audio>` 元素

下面是一个将音频嵌入到 HTML 文档的例子。

```html
<audio src="/test/audio.ogg">
  你的浏览器不支持 audio 标签。
</audio>
```

src 属性可以设置为一个音频文件的 URL 或者本地文件的路径。

```html
<audio src="audio.mp3" preload="none" controls loop>
  你的浏览器不支持 audio 标签。
</audio>
```

这个例子的代码中使用了 HTML 的“audio”元素的一些属性：

- ‘‘controls’’ : 为网页中的音频显示标准的 HTML5 控制器。
- ‘‘loop’’ : 使音频自动重复播放。
- ‘‘preload’’ : 属性用来缓冲 audio 元素的大文件，有三个属性值可供设置：
  - “none” 不缓冲文件
  - “auto” 缓冲音频文件
  - “metadata” 仅仅缓冲文件的元数据

> 参阅 [HTML5 `` 元素](https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/audio)，和 [使用 HTML5 音频和视频](https://developer.mozilla.org/zh-CN/docs/Web/Guide/HTML/Using_HTML5_audio_and_video)。

### 在线音乐

进入 [**网易云音乐**](https://music.163.com/#) 歌曲界面，点击光碟下方的生成外链播放器：

```html
<iframe
    frameborder="no"
    border="0"
    marginwidth="0"
    marginheight="0"
    width=330
    height=86
    src="//music.163.com/outchain/player?type=2&id=393697&auto=1&height=66">
</iframe>
```

<iframe frameborder="no" border="0" marginwidth="0" marginheight="0" width=330 height=86 src="//music.163.com/outchain/player?type=2&id=431259256&auto=1&height=66"></iframe>






### 参考

- [Markdown 音频](https://keatonlao.gitee.io/a-study-note-for-markdown/syntax/%E8%AF%A6%E7%BB%86%E7%89%88/markdown-%E6%8F%92%E5%85%A5%E9%9F%B3%E9%A2%91/)





## 十六、Markdown 注脚



使用 Markdown[^1] 可以效率的书写文档，直接转换成 HTML[^2], 你可以使用 Typora[^T] 软件。 

参考[^Z]

> 脚注显示在笔记末尾；脚注后方的链接可以直接跳转回到加注的地方。





## 十七、折叠内容

语法：

```html
<details> <summary>Title</summary>
contents ...
</details>
```





效果如下：

<details> <summary>Title</summary> contents ... </details>



### 参考

- [Markdown 折叠内容](https://keatonlao.gitee.io/a-study-note-for-markdown/syntax/%E8%AF%A6%E7%BB%86%E7%89%88/markdown-%E6%8A%98%E5%8F%A0%E5%86%85%E5%AE%B9/)



















[^1]: Markdown 是一种纯文本标记语言。 
[^2]: HyperText Markup Language 超文本标记语言。
[^T]: Typora 官网 <https://typora.io/>
[^Z]: https://keatonlao.gitee.io/a-study-note-for-markdown/syntax/%E8%AF%A6%E7%BB%86%E7%89%88/markdown-%E6%B7%BB%E5%8A%A0%E6%B3%A8%E8%84%9A/



