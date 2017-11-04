---
title: Build Errors
description: Dealing with various errors when building CFRCR.
---
Build errors for CFRCR can generally be categorized into {% include term text="Jekyll" %} build errors and CFRCR backend build errors.

## Jekyll Build Errors
Jekyll build errors prevent the site from building successfully and are usually caused by a {% include term text="liquid" %} syntax mistake or non-existent {% include term text="include" %}. If you are building the site incrementally (like when editing it) and don't see your changes, double check in the console that you haven't caused a Jekyll build error.

## CFRCR Backend Build Errors
These errors can result from attempting to reference resources that don't exist (or have been moved), incorrect or incomplete {% include term text="front matter" %}, or any number of other things. In general, CFRCR's backend tries to fail gracefully in the event of an error. While this is desirable, it can result in unexpected behavior that is difficult to troubleshoot if you don't know what you're looking for.

These errors can be located in either of two ways. To look for errors on an individual page, simply go to it and open the javascript console (right click -> Inspect -> Console for Chrome) and check for red error messages. To look for errors without opening a page in a browser or to check the whole site, simply search through the compiled site files (usually in `_site/`) for `CFRCR BUILD ERROR`. This can be done from the root folder of the site's source in linux with `grep -snr "CFRCR BUILD ERROR" _site/`.
