---
title: "Ostrom Lab - Team"
layout: gridlay
excerpt: "Ostrom Lab: Team members"
sitemap: false
permalink: /team/
---

# Group Members

Jump to [staff](#staff), [students](#master-and-bachelor-students), [alumni](#alumni).

<div class="row">
  <h4 style="display: inline;">Quinn Ostrom  <a href="https://orcid.org/0000-0003-3469-7558"> <img src="https://ostrom-lab.github.io/images/512px-ORCID_iD.svg.png" height=20 width=20 style="display: inline;"></a>   <a href="https://twitter.com/qostrom"> <img src="https://ostrom-lab.github.io/images/Twitter_new_X_logo.png" height=15 width=15 style="display: inline;"></a> </h4><br>
  <i>Assistant Professor of <a href="https://neurosurgery.duke.edu/">Neurosurgery</a> and <a href="https://populationhealth.duke.edu/">Population Health Sciences</a>, started Jan 2021 <br>email: quinn.ostrom@duke.edu</i> 
  <ul style="overflow: hidden">
  <li> BS in Anthropology, Michigan State University </li>
  <li> MPH, Case Western Reserve University</li>
  <li> PhD in Genetic Epidemiology and Bioinformatics, <a href="https://case.edu/medicine/pqhs/">Case Western Reserve University</a> with <a href="https://dceg.cancer.gov/about/staff-directory/barnholtz-sloan-jill">Jill Barnholtz-Sloan</a> (now @ NCI) </li>
 <li> Cancer Prevention Research Institute of Texas (CPRIT) Post-Graduate Training Program in Integrative Cancer Epidemiology @ <a href="https://www.bcm.edu/departments/medicine/sections/epidemiology-and-population-sciences">Baylor College of Medicine, Section of Epidemiology & Population Science</a> with <a href="https://med.stanford.edu/profiles/melissa-bondy">Melissa Bondy</a> (now @ Stanford).
 </li>
  </ul>
</div>

## Staff

{% assign number_printed = 0 %}
{% for member in site.data.team_members %}
{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 0 %}
<div class="row">
{% endif %}
<div class="col-sm-6 clearfix">
  <h4>{{ member.name }} <a href="https://orcid.org/{{ member.orcid }}"> <img src="https://ostrom-lab.github.io/images/512px-ORCID_iD.svg.png" height=20 width=20 style="display: inline;"></a></h4>
  <i>{{ member.info }} <!--<br>email: <{{ member.email }}> --> </i>
  <ul style="overflow: hidden">
  {% if member.number_educ == 1 %}
  <li> {{ member.education1 }} </li>
  {% endif %}
  {% if member.number_educ == 2 %}
  <li> {{ member.education1 | markdownify}} </li>
  <li> {{ member.education2 | markdownify}} </li>
  {% endif %}
  {% if member.number_educ == 3 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  {% endif %}
  </ul>
</div>
{% if even_odd == 1 %}
</div>
{% endif %}
{% assign number_printed = number_printed | plus: 1 %}
{% endfor %}
{% if even_odd == 0 %}
</div>
{% endif %}

## Students

{% assign number_printed = 0 %}
{% for member in site.data.students %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <h4>{{ member.name }}</h4>
  <i>{{ member.info }} <!-- <br>email: <{{ member.email }}> --></i>
  <ul style="overflow: hidden">
  
  {% if member.number_educ == 1 %}
  <li> {{ member.education1 }} </li>
  {% endif %}
  
  {% if member.number_educ == 2 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  {% endif %}
  
  {% if member.number_educ == 3 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  {% endif %}
  
  {% if member.number_educ == 4 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  <li> {{ member.education4 }} </li>
  {% endif %}
  </ul>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}


## Alumni

{% assign number_printed = 0 %}
{% for member in site.data.alumni_members %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
<h4>{{ member.name }}</h4>
<i>{{ member.duration }}</i>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

**We are looking for new students and collaborators to join the team** [(see openings)]({{ site.url }}{{ site.baseurl }}/vacancies) **!**

