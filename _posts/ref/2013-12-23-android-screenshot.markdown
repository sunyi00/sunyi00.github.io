---
layout: post
title:  "android screenshot"
date:   2013-12-23 22:45:00
categories: ref
tags: ref android
---


一般 Android 用户都知道同时按下音量减和电源键的屏幕截图方式，不过作为开发者，可能需要一个更为简便的方式将屏幕截图保存至开发电脑上。
该方式仅需在终端执行一条命令即可，涉及调用系统内置的 screencap 工具：
{% highlight bash %}
adb shell screencap -p | sed 's/\r$//' > screen.png
{% endhighlight %}
screencap 本身支持标准输出，所以可以用管道符链接。但是 adb shell 会将结果中的 LF 转换为 CR+LF（为了兼容性考虑？），于是会将 png 的格式破坏。于是这里使用行编辑器 sed 将 LF 前的 CR 移除。
若您使用 OS X，也可以使用 perl 实现类似效果：
{% highlight bash %}
adb shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g' > screen.png
{% endhighlight %}
