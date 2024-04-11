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
  <h4>Quinn Ostrom  </h4> <a href="https://orcid.org/0000-0003-3469-7558"> <img src="images/512px-ORCID_iD.svg.png" height=15 width=15 class="img-responsive" style="float: left"></a> 
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

<div class="row">
<div class="col-sm-6 clearfix">
  <h4> Corey Neff</h4>
  <i>Biostatistician, started June 2021</i> 
  <ul style="overflow: hidden">
  <li> BA, University of Tennessee, Knoxville </li>
  <li> MPH, East Tennessee State University</li>
  </ul>
</div>
<div class="col-sm-6 clearfix">
  <h4> Christine Ballard </h4>
  <i>Research Analyst, started February 2024</i> 
  <ul style="overflow: hidden">
  <li>BA, University of Rochester</li>
  <li>MPH, SUNY University at Albany</li>
  <li>PhD Student, University of North Carolina at Chapel Hill</li>
  </ul>
</div>
</div>

<div class="row">
<div class="col-sm-6 clearfix">
  <h4> Mackenzie Price</h4>
  <i> Research Analyst, April 2022-September 2023 (Now affiliated Research Analyst at <a href="http://cbtrus.org">CBTRUS</a>)</i> 
  <ul style="overflow: hidden">
  <li> BA, University of North Carolina at Chapel Hill </li>
  <li> MPH, University of California at Berkeley</li>
  </ul>
</div>
</div>


## Students
{% assign number_printed = 0 %}
{% for member in site.data.students %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <h4>{{ member.name }}</h4>
  <i>{{ member.info }} <!-- <br>email: <{{ member.email }}></i> -->
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
  <i>{{ member.duration }} <br> Role: {{ member.info }}</i>
  <ul style="overflow: hidden">

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


