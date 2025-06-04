---
title: "News"
layout: textlay
excerpt: "Ostrom Lab at Duke University School of Medicine."
sitemap: false
permalink: /allnews.html
---

# News

{% for article in site.data.news %}
<p><b>{{ article.date }}</b>: {{ article.headline | markdownify}}</p>
<p>
  {{ article.text | markdownify}}</p>
{% endfor %}

