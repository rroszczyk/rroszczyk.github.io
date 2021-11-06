---
layout: post
slug: git
---

<h1>Więcej tekstów o podobnej tematyce: {{ page.slug }}</h1>
<ol>
  {% for post in site.tags[page.slug] %}
  <li><a href="{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ol>