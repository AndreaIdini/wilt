---
title: The website craft 101
author: Andrea Idini
type: post
date: 2014-03-25T21:20:48+00:00
url: /2014/03/25/the-power-of-dns/
categories:
  - Coding
  - web
tags:
  - .htaccess
  - css
  - dns

---
When I kicked on WILT I learned some deal regarding the craft of the website productions.

First of all I struggled with the DNS. I first of all found that exist two type of DNS configurations `A` and `CNAME`.

  * `A` links to an IP-address, in other words the server IP.
  * `CNAME` links to another http address, connecting via DNS for example _<http://phme.it>_ to _[http://w__ww.phme.it][1]._

Then I decided to set up the WordPress network in subdirectory instead of subdomain, and I struggled with the infamous `.htaccess`  
`.htaccess` is a file that manage the redirects to pages from the server. Playing with `.htaccess` can guarantee you a nicely addressed (and thus indexable) website, or send you straight to the "circular redirect" hell.  
The sintax is still quite obscure to me, but is based on the REGEX expressions.

Finally I had to deal with the graphic presentation of the website, and thus a tiny fraction of the interesting world of CSS. Changing for example the CSS parameters of the header (but not the html) I managed to resize the header and give to the "Pinzolo theme" a more clean and svelte look.

 [1]: http://www.phme.it