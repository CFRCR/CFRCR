---
title: Working With Collection Files
description: How to add and edit collections in CFRCR.
---
Collections in CFRCR are simply files in the `_collections` folder. Like most content files, it's recommended to write them in {% include term text="markdown" %} (`.md` extension). They can be organized into folders arbitrarily.

The {% include term text="front matter" %} for a collection encodes basically all of the page, besides any custom content. The basics include a `title` and `description` attribute. From there, the content of the page is given by the `resources` attribute, an array of the different resources you want in your collection. Each of these needs a `type` attribute that tells the site what your resource should look like and a `title` attribute that is at a minimum used in the side panel.

## Custom Content
Sometimes it doesn't make sense to have a resource separate from a collection, just use `type: custom`. From there, anything in the content of the collection (outside of the {% include term text="front matter" %}) between an {% include term text="include" %} marking the start of your custom resource and another custom resource's will be shown as your resource. Here's what part of your {% include term text="front matter" %} would look like:
{% highlight yaml %}{% raw %}
resources:
-
  title: <custom_resource_title>
  type: custom
{% endraw %}{% endhighlight %}
and your content:
{% highlight liquid %}{% raw %}{% include collection/custom_begin title="<custom_resource_title>" %}
<custom_resource_content>
{% endraw %}{% endhighlight %}

## Documents
If you want to use a document within your collection give it the `type: document` and the `path` to the document (from within the "\_documents/" folder, e.g. "cfrcr/content/collection_files.md"):
{% highlight yaml %}{% raw %}
resources:
-
  title: <document_title>
  type: document
  path: <document_path>
{% endraw %}{% endhighlight %}

## Terms
If you want to use a term within your collection give it the `type: term` and the `path` to the term (from within the "\_glossary/" folder, e.g. "jekyll/front_matter.md"):
{% highlight yaml %}{% raw %}
resources:
-
  title: <term_title>
  type: document
  path: <term_path>
{% endraw %}{% endhighlight %}

## YouTube Videos
If you want to use a youtube video within your collection give it the `type: youtube` and the `id` of the video (after the "v=" in a youtube URL, e.g. "EMiNmJW7enI"):
{% highlight yaml %}{% raw %}
resources:
-
  title: <youtube_title>
  type: youtube
  id: <youtube_id>
{% endraw %}{% endhighlight %}
Optionally, you can also include a `companion` resource to go along with it. This companion is referenced like any other resource mentioned on this page, though the title is optional (the companion isn't referenced in the side panel):
{% highlight yaml %}{% raw %}
resources:
-
  title: <youtube_title>
  type: youtube
  id: <youtube_id>
  companion:
    title: <optional_companion_title>
    <companion_information>
{% endraw %}{% endhighlight %}

## External resources
If you just want to link to some resources outside of your collection use `type: external_resources` (this is handy for "Prerequisites" or "See Also" sections). You then provide an array of the paths (minus their collection's prefix, e.g. "\_collections/") to collections, documents, or terms for which you want to display cards:
{% highlight yaml %}{% raw %}
resources:
-
  title: <external_resources_title>
  type: external_resources
  resources:
    -
      collection: <path_to_collection>
    -
      document: <path_to_document>
    -
      term: <path_to_term>
{% endraw %}{% endhighlight %}
You can also specify custom external resources by providing the requisite information to go on its card (use [Font Awesome](http://fontawesome.io/icons/) for icons, e.g. "fa-youtube-play"):
{% highlight yaml %}{% raw %}
resources:
-
  title: <external_resources_title>
  type: external_resources
  resources:
    -
      custom:
        url: <custom_external_resource_url>
        icon: <custom_external_resource_icon>
        title: <custom_external_resource_title>
        description: <custom_external_resource_description>
{% endraw %}{% endhighlight %}
Finally, similarly to YouTube videos above, you can specify a `companion` resource to be displayed along with your cards:
{% highlight yaml %}{% raw %}
resources:
-
  title: <external_resources_title>
  type: external_resources
  resources:
    -
      collection: <path_to_collection>
    -
      document: <path_to_document>
    -
      term: <path_to_term>
    -
      custom:
        url: <custom_external_resource_url>
        icon: <custom_external_resource_icon>
        title: <custom_external_resource_title>
        description: <custom_external_resource_description>
  companion:
    title: <optional_companion_title>
    <companion_information>
{% endraw %}{% endhighlight %}

## Example Collection File
That's a lot of information! Here's a complete [example collection](/collections/cfrcr/example_collection/):
{% highlight markdown %}{% raw %}
---
title: Example Collection
description: An example collection.
resources:
-
  title: Collection Specific Content
  type: custom
-
  title: What is Git?
  type: term
  term: git
-
  title: "Cloning: CLI"
  type: document
  path: example/2/2.2/example_doc.md
-
  title: Video Side Panel
  type: youtube
  id: EMiNmJW7enI
  companion:
    title: Video Companion Resource
    type: custom
-
  title: Video By Itself
  type: youtube
  id: EMiNmJW7enI
-
  title: External Resources Side Panel
  type: external_resources
  resources:
    -
      collection: index.md
    -
      document: git/cli/cloning.md
    -
      term: java.md
  companion:
    title: External Resources
    type: custom
-
  title: External Resources By Themselves
  type: external_resources
  resources:
    -
      collection: index.md
    -
      document: git/cli/cloning.md
    -
      term: java.md
    -
      custom:
        url: "https://www.youtube.com/watch?v=EMiNmJW7enI"
        icon: fa-youtube-play
        title: Game Animation
        description: "Learn how the 2017 FRC game, Steamworks, is played!"
-
  title: Non-existant type
  type: none
-
  title: Non-existant document
  type: document
  path: ":()"
---
{% include collection/algolia_content %}
{% include collection/custom_begin title="Collection Specific Content" %}
This is how you would add custom resources to the thing. You know, the thing stored in {% include term text="git" %}. Besides `liquid` includes, markdown (if the collection file ends with .md) works normally:
- Item
- Item
- Another Item

1. Thing 1
2. Thing 2
3. Etc...

# ALL CAPS!!!

{% highlight liquid linenos %}
{% if this == that %}
  {%- assign what = who -%}
{% endif %}
{% endhighlight %}



{% include collection/custom_begin title="Video Companion Resource" %}
You can specify any type of resource to be a companion to a video. This one is custom but it could be anything!


{% include collection/custom_begin title="External Resources" %}
You can specify any type of resource to be a companion to external resources. This one is custom but it could be anything!
{% endraw %}{% endhighlight %}
