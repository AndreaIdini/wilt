---
title: How to see space occupied by directories in Linux Terminal
author: Andrea Idini
type: post
date: 2014-03-18T13:48:16+00:00
url: /2014/03/18/how-to-see-space-occupied-by-directories-in-linux-terminal/
categories:
  - Coding
tags:
  - command
  - hacks
  - linux

---
I learn and forget every tuesday afternoon the power of `du` and other Linux command line hacks. Hopefully writing this it will stick better in my brain lacking of real estate...  
To visualize the dimension of directories without opening the whole tree (and relative nests), the useful command is

> `du -hs */`

with the wildcard that can be substituted by the `**/*/` to include a single level of subdirectories (or analogues for including multiple levels and files).

[Linfo website][1] is a good manual page source if you want more details.

 [1]: http://www.linfo.org/du.html