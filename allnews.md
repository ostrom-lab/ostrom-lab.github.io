---
title: "News"
layout: textlay
excerpt: "Ostrom Lab at Duke University School of Medicine."
sitemap: false
permalink: /allnews.html
---

# News

{% for article in site.data.news %}
<p><b><u>{{ article.date }}</u></b> <b>{{ article.headline | markdownify}}</b></p>
<p>
  {{ article.text }}</p>
{% endfor %}
