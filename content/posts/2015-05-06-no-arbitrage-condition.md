---
title: No-Arbitrage condition
author: Amministrazione
type: post
date: 2015-05-06T21:03:14+00:00
url: /2015/05/06/no-arbitrage-condition/
categories:
  - Finance
  - Science
tags:
  - definition
  - Value

---
No Arbitrage states the inadmissibility of Free Lunch in applying a structure (metric?) to the prices.

Considering a title with price <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_83878c91171338902e0fe0fb97a8c47a.gif' style=' padding-bottom:1px;' class='tex'" /></span> and cash flow <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_a8c3ccf513d8ad6722f82cc9060e7fe7.gif' style=' ' class='tex'" /></span>, or every time <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_8ce4b16b22b58894aa86c421e8759df3.gif' style=' padding-bottom:1px;' class='tex'" /></span>, where <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_8ce4b16b22b58894aa86c421e8759df3.gif' style=' padding-bottom:1px;' class='tex'" /></span> it is the discretized time <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_e358efa489f58062f10dd7316b65649e.gif' style=' padding-bottom:1px;' class='tex'" /></span>.  
Then we have the two No-Arbitrage condition:

  * Weak No-Arbitrage : if <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_8f543b6c72173b396eb32af2b4771428.gif' style=' ' class='tex'" /></span>
  * Strong No-Arbitrage: if <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_d4e5c7d87799b210379d4cd08f622bbe.gif' style=' ' class='tex'" /></span> and <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_ab0e974bc5ec3da11ff8c6abeedb48a4.gif' style=' ' class='tex'" /></span>

Let's suppose a world where I can borrow money with fixed interest rate <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_4b43b0aee35624cd95b910189b3dc231.gif' style=' padding-bottom:2px;' class='tex'" /></span>, which will be the price <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_83878c91171338902e0fe0fb97a8c47a.gif' style=' padding-bottom:1px;' class='tex'" /></span> of a product with interest <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_7fc56270e7a70fa81a5935b72eacbe29.gif' style=' ' class='tex'" /></span> over one year?  
I can borrow money until I expect to be payed back by the revenue A, so the cash flow at and of year would be 0, which is <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_df2f7856dcc46be27a52406a4a775de2.gif' style=' ' class='tex'" /></span>. The price <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_fbade9e36a3f36d3d676c1b808451dd7.gif' style=' padding-bottom:2px;' class='tex'" /></span> of the portfolio is given by the price of the product minus the borrowed money at time 0: <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_3457c99323c85daac70e7972de749a77.gif' style=' ' class='tex'" /></span>.  
Weak No-Arbitrage fixes then the price <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_9eb68f7ab5af9793d386546341725467.gif' style=' ' class='tex'" /></span> giving <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_178bf0990004d59d22ff89d88cf9782e.gif' style=' ' class='tex'" /></span>.  
Same can be applied for selling, giving <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_7474166516fb7249b120c5adb6cc2127.gif' style=' ' class='tex'" /></span>, thus the meeting of buying and selling is, unsurprisingly <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_378c00a5676ea36d388130e14c3d2037.gif' style=' ' class='tex'" /></span>.

_But, if we use the strong arbitrage condition -satisfied, since we assumed the interest of the product <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_17d9c075c38185fc7315e5888f9537e0.gif' style=' ' class='tex'" /></span>- we get that <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_c3129b6a78f4ee3279c57c30c4f473c9.gif' style=' ' class='tex'" /></span> for the buyer, and <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_a6c7ee44c00acf5e3555ab62a4dfdf13.gif' style=' ' class='tex'" /></span> for the seller (?). So buying and selling cannot be met. And why should they? You gain nothing by selling or buying if you can lend and borrow money indefinitely for a fixed interest rate, thus is better not to do anything at all..._