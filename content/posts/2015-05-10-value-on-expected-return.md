---
title: Value at Risk on expected return
author: Andrea Idini
type: post
date: 2015-05-10T21:54:40+00:00
url: /2015/05/10/value-on-expected-return/
nkweb_code_in_head:
  - default
nkweb_Use_Custom_js:
  - default
nkweb_Use_Custom_Values:
  - default
nkweb_Use_Custom:
  - 'false'
categories:
  - Finance
  - Science
tags:
  - definition
  - portfolio

---
Value at Risk on expected return is the lower bound for the loss in an investement respect to a probability.  
Is a way to estimating losses probabilities in terms of value, instead of standard deviation. E.g. in the case of <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_15f8404129ac49b1cc62296d09ca42bd.gif' style=' ' class='tex'" /></span>, means that the investor have a probability <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_7b7f9dbfea05c83784f8b85149852f08.gif' style=' padding-bottom:2px;' class='tex'" /></span> of loosing <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_9d5ed678fe57bcca610140957afab571.gif' style=' padding-bottom:1px;' class='tex'" /></span>€ or more, investing <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_7fc56270e7a70fa81a5935b72eacbe29.gif' style=' ' class='tex'" /></span>€ on the portfolio <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_83878c91171338902e0fe0fb97a8c47a.gif' style=' padding-bottom:1px;' class='tex'" /></span>.

Considering the system ergodic and thus all the variances of the titles summing up coherently to for a variance of the portfolio distributed within the normal distribution, this is simply calculated considering the [quantile][1] (the value of the distribution corresponding to a certain fraction <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_7b7f9dbfea05c83784f8b85149852f08.gif' style=' padding-bottom:2px;' class='tex'" /></span> of probability) <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_38ac91602f4173aa1e9a6edcca85d00f.gif' style=' ' class='tex'" /></span>.

<p style='text-align:center;'>
  <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_cccba4147cc1c6cd529d3e372c4dc944.gif' style='' class='tex'" /></span>
</p>

(!) The <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_899857f2795e1307be64b0d9b2acac5c.gif' style=' ' class='tex'" /></span> of a portfolio is not a weighted average of the <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_899857f2795e1307be64b0d9b2acac5c.gif' style=' ' class='tex'" /></span> of its component, because <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_e8ddff75647760043eb393b33cc2f333.gif' style=' ' class='tex'" /></span> but is given by the covariance matrix <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_025b3f94d79319f2067156076bf05243.gif' style=' padding-bottom:1px;' class='tex'" /></span> due to the correlation of assets <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_d770aac63962c0f914fa892421f8382d.gif' style=' ' class='tex'" /></span>.

 [1]: http://en.wikipedia.org/wiki/Quantile