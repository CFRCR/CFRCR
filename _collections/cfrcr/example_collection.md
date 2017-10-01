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

{% highlight liquid linenos %}{% raw %}
{% if this == that %}
  {%- assign what = who -%}
{% endif %}
{% endraw %}{% endhighlight %}



{% include collection/custom_begin title="Video Companion Resource" %}
You can specify any type of resource to be a companion to a video. This one is custom but it could be anything!


{% include collection/custom_begin title="External Resources" %}
You can specify any type of resource to be a companion to external resources. This one is custom but it could be anything!