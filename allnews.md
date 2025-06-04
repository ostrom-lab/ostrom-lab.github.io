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
  {% if article.image contains "." %}
  <img src="https://ostrom-lab.github.io/images/news/{{ article.image }}" style="align: right; display:inline;" width=200>
  {% endif %}
  {{ article.text | markdownify}}</p>
  <p>
{% endfor %}
