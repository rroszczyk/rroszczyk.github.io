---
layout: main
---
<h1>Więcej tekstów o tematyce powiązanej z {{ page.slug }}</h1>
{% for post in site.tags[page.slug] %}
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
    <span class="post-date">{{post.date | date: '%Y, %b %d'}}&nbsp;&nbsp;&nbsp;—&nbsp;</span>
    <span class="post-words">{% capture words %}{{ post.content | number_of_words }}{% endcapture %}{% unless words contains "-" %}{{ words | plus: 250 | divided_by: 250 | append: " minute read" }}{% endunless %}</span>
  </div>
</article>
{% endfor %}

{% include pagination.html %}
