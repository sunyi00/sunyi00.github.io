---
layout: post
title:  "python import path"
date:   2013-12-23 17:30:00
categories: ref
tags: ref python
---

转载信息来源：python的import路径问题_风的影子 python介绍与应用_百度空间 但是已被删除

###`python` 的 `PATH` 包括

1. 当前目录
2. 环境变量 `PYTHONPATH`
3. `WINDOWS` 的注册表 - 这个不明觉厉
4. `python` 安装目录下的 `lib` 和 `lib/site-packages`
5. 程序运行过程中 `sys.path` 添加的目录

###具体的说一下第三方的模块

1. 大部分都是装到它的 `lib/site-packages` 里去了，模块的名字就是 `site-packages` 里的目录的名字
2. 还有一种情况

>就是如果我有个模块在 `site-packages` 里，是一个目录的形式，名字叫 `zwtest-0.1`
这时候想要 `import` 这个模块的话，应该写成 `import zwtest-0.1`
但是这样就很不爽了，如果出了 `zwtest-0.2` ，连import都的改。
有一办法就是在与 `zwtest-0.1` 相同目录里建立一个 `zwtest.pth` 的文件，里面内容是 zwtest-0.1
这样 `python` 在查找模块的时候，会把 `zwtest.pth` 中的模块全部当成名为 `zwtest` 的模块
这时候 `import zwtest` 就和 `import zwtest-0.1` 效果一样了
升级版本，只需要修改 `zwtest.pth` 就好了，而且也很好的解决了一个模块的多版本共存问题
并且， `*.pth` 中是可以写多个模块的，一行写一个就行

