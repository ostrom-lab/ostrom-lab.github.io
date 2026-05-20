---
title: "Ostrom Lab - Publications"
layout: gridlay
excerpt: "Ostrom Lab -- Publications."
sitemap: false
permalink: /publications/
---


# Publications

## Highlights

**At the end of this page, you can find a [full list of publications](#Ostrom-lab-publications-and-collaborations).**

{% assign number_printed = 0 %}
{% for publi in site.data.publist %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if publi.highlight == 1 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
 <div class="well" style="overflow: hidden">
  <pubtit>{{ publi.title }}</pubtit>
  {% if  publi.image contains "." %}
  <img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ publi.image }}" class="img-responsive" width="30%" style="float: left" />
  {% endif  %}
  <p>{{ publi.description }}</p>
  <p><em>{{ publi.First_author | markdownify }}</em></p>
  <p><strong><a href="{{ publi.link.url }}">{{ publi.link.display }}</a></strong></p>
  <p class="text-danger"><strong> {{ publi.news1 }}</strong></p>
  <p> {{ publi.news2 }}</p>
 </div>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endif %}
{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

<p> &nbsp; </p>


## Ostrom lab publications and collaborations

{% for publi in site.data.publist %}

<b>{{ publi.title }} </b><br />
<em>{{ publi.authors }} </em><br />
 {% if publi.description %} {{ publi.description }} <br>
{% endif %}
<a href="{{ publi.link.url }}">{{ publi.link.display }}</a> 

{% endfor %}
