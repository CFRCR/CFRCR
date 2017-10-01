---
title: Working With Term Files
description: How to add and edit terms in CFRCR's glossary.
---
Terms in the CFRCR glossary are simply files in the `_glossary` folder. Like most content files, it's recommended to write them in {% include term text="markdown" %} (`.md` extension).

The {% include term text="front matter" %} for a term should include a `title` attribute for the title of the page, a  `name` attribute for matching when the term is included somewhere else, and a `description` attribute with a short explanation of the term. The `name` attribute should be lower case and contain any spaces that would be there when using the term in a sentence. If it makes more sense to simply link to some resource outside of CFRCR for the term, you can include an `external` attribute with the url. If you do this, please copy the description of the term to the page content (underneath the front matter); it ensures the term is indexed properly by {% include term text="algolia" %}. Here's an example&mdash;the {% include term text="front matter" %} term used above:

{% highlight liquid %}{% raw %}
---
title: Jekyll Front Matter
name: front matter
description: A section in Jekyll files that contains metadata.
external: https://jekyllrb.com/docs/frontmatter/
---
A section in Jekyll files that contains metadata.
{% endraw %}{% endhighlight %}