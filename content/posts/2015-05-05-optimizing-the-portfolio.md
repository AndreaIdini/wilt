---
title: 'Optimizing: the Minimum Variance (or Maximum Return) Portfolio example'
author: Andrea Idini
type: post
date: 2015-05-05T21:16:59+00:00
url: /2015/05/05/optimizing-the-portfolio/
categories:
  - Finance
  - Science
tags:
  - derivation
  - portfolio
  - portfolio optimization

---
The aim is the optimization either by maximizing total return (or minimizing risk), in keeping with the constraints of normalization for a given risk (or return).

Thus Lagrange method is perfectly suited for the job.  
For minimizing risk, respect to a desired total return <span><img src="/wilt/wp-content/plugins/latex/cache/tex_463f2e5a8ecc0cafd059df3dc8b00a91.gif"/></span>, one must consider the function of total risk  


<p style='text-align:center;'>
  <span><img src="/wilt/wp-content/plugins/latex/cache/tex_955af1bf31639aaee43ffc1a7117c56a.gif"/></span>
</p>

  
and minimize the lagrangian with constrain over the desired return and sum to one of weights.

<p style='text-align:center;'>
  <span><img src="/wilt/wp-content/plugins/latex/cache/tex_15456b40b2996d3b246a659e48962696.gif"/></span>
</p>

Thus, provided that the constraints have non-zero derivatives,  


<p style='text-align:center;'>
  <span><img src="/wilt/wp-content/plugins/latex/cache/tex_66477750a089d9101ad2cce51606540c.gif"/></span>
</p>

  
by the fact that <span><img src="/wilt/wp-content/plugins/latex/cache/tex_d938cd3effe608ceb1865c59cfa58f48.gif"/></span> is a non--degenerate constant vector (otherwise fixing the Total Risk is given), the Lagrangian is given by  


<p style='text-align:center;'>
  <span><img src="/wilt/wp-content/plugins/latex/cache/tex_daf0a624e257cf81b52ecd87e345ac43.gif"/></span>
</p>

  
with <span><img src="/wilt/wp-content/plugins/latex/cache/tex_6705ec55ab3cd1f85a6a7b3029a0ca2e.gif"/></span> the vector of lagrange multipliers.

Thus the minimization (maximization) is given by finding the extremant of the Lagrangian,  


<p style='text-align:center;'>
  <span><img src="/wilt/wp-content/plugins/latex/cache/tex_2c2044a8f3c787519a15db2ffd47977a.gif"/></span>
</p>

<p style='text-align:center;'>
  <span><img src="/wilt/wp-content/plugins/latex/cache/tex_1e5a38b53f0533c2c099904daf7ad05b.gif"/></span>
</p>

That is solved by considering the following linear system, that considering a symmetric covariance matrix <span><img src="/wilt/wp-content/plugins/latex/cache/tex_025b3f94d79319f2067156076bf05243.gif"/></span> is given by  


<p style='text-align:center;'>
  <span><img src="/wilt/wp-content/plugins/latex/cache/tex_d4ff189f0d366c915f7f22ba498fd481.gif"/></span>
</p>

  
where <span><img src="/wilt/wp-content/plugins/latex/cache/tex_7ceb9ba8e181be631994efa34bc73281.gif"/></span> and <span><img src="/wilt/wp-content/plugins/latex/cache/tex_58c5d44dbdebdc066ac0e6509d19676e.gif"/></span> in the definition of the matrix are linear vectors of equal dimension.

Finally considering the Hessian for <span><img src="/wilt/wp-content/plugins/latex/cache/tex_c07758348bd2d5c1d405c58ff34a8716.gif"/></span> operator to find the convexity.

Analogously could be done for a maximum return portfolio or relaxing the attribute for the desired best compromise.