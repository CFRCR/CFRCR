---
title: Working With Document Files
description: How to add and edit documents in CFRCR.
---
Documents in CFRCR are simply files in the `_documents` folder. Like most content files, it's recommended to write them in {% include term text="markdown" %} (`.md` extension). They can be organized into folders arbitrarily.

The {% include term text="front matter" %} for a document should include a `title` attribute for the title of the document and a `description` attribute with a short explanation of the term. Here's an example&mdash;the {% include term text="front matter" %} of this document:

{% highlight markdown %}{% raw %}
---
title: Working With Document Files
description: How to add and edit documents in CFRCR.
---
{% endraw %}{% endhighlight %}