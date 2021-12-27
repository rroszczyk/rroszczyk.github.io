---
layout: main
---
<h1>Tu się znajdują teksty z pozostałych kategorii</h1>
{% for post in site.categories[page.slug] %}
<article class="post">
  {% if post.ximg %}
    <a class="post-thumbnail" style="background-image: url({{"/img/" | prepend: site.baseurl | append : post.ximg}})" href="{{post.url | prepend: site.baseurl}}"></a>
  {% else if post.img %}
    <a class="post-thumbnail" style="background-image: url({{"/img/" | prepend: site.baseurl | append : post.img}})" href="{{post.url | prepend: site.baseurl}}"></a>
  {% else %}
  {% endif %}
  <div class="post-content">
    <h2 class="post-title"><a href="{{post.url | prepend: site.baseurl}}">{{post.title}}</a></h2>
    {% if post.description %}
    <p class="text-justify">{{ post.description | strip_html }}</p>    
    {% else %}
    <p class="text-justify">{{ post.content | strip_html | truncatewords: 15 }}</p>    
    {% endif %}
    <span class="post-date">
    {% assign m = post.date | date: "%-m" %}
    {{ post.date | date: "%-d" }}
    {% case m %}
      {% when '1' %}Styczeń
      {% when '2' %}Luty
      {% when '3' %}Marzec
      {% when '4' %}Kwiecień
      {% when '5' %}Maj
      {% when '6' %}Czerwiec
      {% when '7' %}Lipiec
      {% when '8' %}Sierpień
      {% when '9' %}Wrzesień
      {% when '10' %}Październik
      {% when '11' %}Listopad
      {% when '12' %}Grudzień
    {% endcase %}
    {{ post.date | date: "%Y" }}&nbsp;&nbsp;&nbsp;—&nbsp;
    </span>    
    <!-- <span class="post-date">{{post.date | date: '%Y, %b %d'}}&nbsp;&nbsp;&nbsp;—&nbsp;</span> -->
    <!-- <span class="post-words">{% capture words %}{{ post.content | number_of_words }}{% endcapture %}{% unless words contains "-" %}{{ words | plus: 250 | divided_by: 250 | append: " minute read" }}{% endunless %}</span> -->
    <span class="post-words">{% assign words = post.content | number_of_words %}	  
      {% if words < 360 %} 1 minuta czytania
      {% elsif words < 900 %} {{ words | divided_by: 180 }} minuty czytania
      {% else %} {{ words | divided_by: 180 }} minut czytania
      {% endif %}</span>    
  </div>
</article>
{% endfor %}

{% include pagination.html %}
