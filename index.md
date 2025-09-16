---
layout: page
nav_order: 1
title: Schedule
description: Listing of course modules and topics.
---

# CEE 260/MIE273\: Probability and Statistics in Engineering

## UMass Amherst, Fall 2025

{: .mb-2 .fs-6 .text-grey-dk-000 style="margin-top: 0;"  }
[Canvas](https://umamherst.instructure.com/courses/31233){:target="_blank" .btn .btn-canvas .mr-1 }
[Lecture Videos](https://echo360.org/section/47c3b0d1-758e-4090-99ce-7fc3cdd96573/home){:target="_blank" .btn .btn-echo360 .mr-1 }
[Gradescope](https://www.gradescope.com/courses/1113538){:target="_blank" .btn .btn-gradescope .mr-1 }
[Overleaf/LaTeX](https://www.overleaf.com/read/trwqyfddzssz#3b9273){:target="_blank" .btn .btn-overleaf .mr-1 }
[Datahub](https://drive.google.com/drive/u/3/folders/17sJr7sBNNpVGtcNXe6GJvJOkzU5hlLeU){:target="_blank" .btn .btn-datahub .mr-1 }

<div>
{% assign instructors = site.staffers | where: 'role', 'Instructor' | sort: 'order' %}
  <div class="role">
    {% for staffer in instructors %}
    <!-- {% assign staffer.photo = staffer.photo | replace: '../', '' %} -->
    {{ staffer }}
    {% endfor %}
  </div>
</div>


### Schedule

{% for module in site.modules %}
{{ module }}
{% endfor %}
