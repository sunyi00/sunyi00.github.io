---
layout: post
title:  "python reload module"
date:   2013-12-23 21:45:00
categories: ref
tags: ref python
---

##1. 直接 `import` 的 `module`

{% highlight python %}
import foo.bar
reload(foo.bar)
{% endhighlight %}

##2. `from foo.bar import Bar` 这种

{% highlight python %}
from foo.bar import Bar
import sys
del sys.modules['foo.bar']
from foo.bar import Bar
{% endhighlight %}
