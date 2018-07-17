---
layout: blog
title: test
time: 2018-06-03 10:10:00 0100
permalink: /blog/test/
categories: statistics 
image: math-lg.jpg
comments: "This is optional and will show as small muted text."
further:
  - supertask:  
    text: Learn more about supertasks on wikipedia.
    link: https://en.wikipedia.org/wiki/Supertask
  - cardinals:
    text: Learn more about cardinal arithmetic on wikipedia.
    link: https://en.wikipedia.org/wiki/Cardinal_number#Cardinal_arithmetic
references:
- "[Ros10] S.M. Ross. <em>A First Course in Probability.</em> Pearson Prentice Hall, 2010.: 46-48"
---

### Section Title

{% capture post_time %}{{ site.posts[0].time | date: "%s" }}{% endcapture %}

{% capture last_post %}{{ "now" | date: "%s" | minus: post_time }}{% endcapture %}

{{ last_post }}

{% if last_post < "605000" %}
  hello
{% endif %}
