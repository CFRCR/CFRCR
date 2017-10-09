---
title: Working With Collection Index Files
description: How to add and edit collection indices in CFRCR.
---
*NOTE: This document only covers information on collection index files, see [this](../collection_files/) for normal collections.*

Collections indices are collections of collections and as such are simply files in the `_collections` folder. Like most content files, it's recommended to write them in {% include term text="markdown" %} (`.md` extension). Usually, collection indices are the `index.md` file in a folder within `_collections/`.

Just like standard collection files, the {% include term text="front matter" %} for collection indices have `title` and `description` attributes but they also have their layout changed with `layout: collection_index`. To make their url a little cleaner, you also usually want to set the `permalink` attribute to `/collections/<path of folder inside _collections/>/` (e.g. `permalink: /collections/git/`). For high level collection indices, you might want to set the `icon` attribute to something from [Font Awesome](http://fontawesome.io/icons/) (e.g. `fa-git`). Finally, set the `collections` attribute to an array of the paths of the collections you want in your index.

To make sure that your index is properly searchable, add `{% raw %}{% include collection/algolia_content %}{% endraw %}` to the content of your collection index.

Here's a complete example of what a collection index file could look like:
{% highlight markdown %}{% raw %}
---
title: Collections
description: The high level index of collections on CFRCR.
layout: collection_index
icon: fa-git
collections:
  - "cfrcr/index.md"
  - "programming/index.md"
  - "git/index.md"
permalink: /collections/
---
{% include collection/algolia_content %}
{% endraw %}{% endhighlight %}