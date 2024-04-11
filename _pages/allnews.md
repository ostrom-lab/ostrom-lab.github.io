---
title: "News"
layout: textlay
excerpt: "Ostrom Lab at Duke University School of Medicine."
sitemap: false
permalink: /allnews.html
---

# News

{% for article in site.data.news %}
<p>{{ article.date }} <br> {{ article.headline | markdownify}}</p>
{% endfor %}
