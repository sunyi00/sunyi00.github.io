---
layout: post
title:  "git delete tag"
date:   2013-12-23 22:30:00
categories: ref
tags: ref git
---

##1. 删除本地tag

{% highlight bash %}
git tag -d mytag
{% endhighlight %}

##1. 删除远程tag

{% highlight bash %}
git push origin :refs/tags/mytag
{% endhighlight %}
