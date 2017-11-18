---
title: CFRCR Development Environment
description: A guide for setting up your CFRCR development environment.
resources:
-
  title: Install Jekyll
  type: custom
-
  title: Clone CFRCR
  type: clone
  url: "https://github.com/CFRCR/CFRCR.git"
-
  title: Install Plugins
  type: custom
-
  title: Serve the Site!
  type: custom
---
{% include collection/algolia_content %}

{% include collection/custom_begin title="Install Jekyll" %}
{% include term text="Jekyll" %} is our site generator and can be installed by folling the guide [here](https://jekyllrb.com/docs/installation/). Make sure to install all of the requirements listed on that page beforehand.

{% include collection/custom_begin title="Install Plugins" %}
CFRCR relies on some {% include term text="Jekyll" %} plugins to operate. You can install them by running `bundle install` from within the CFRCR folder created after cloning.

{% include collection/custom_begin title="Serve the Site!" %}
You can build CFRCR locally and start a temporary web-server by running `bundle exec jekyll serve` from within the repository folder. The site should now be accessible locally [here](http://localhost:4000/).
