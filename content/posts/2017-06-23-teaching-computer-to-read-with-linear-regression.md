---
title: Teaching computer to read with linear regression
author: Andrea Idini
type: post
date: 2017-06-22T23:30:17+00:00
url: /2017/06/23/teaching-computer-to-read-with-linear-regression/
nkweb_code_in_head:
  - default
nkweb_Use_Custom_js:
  - default
nkweb_Use_Custom_Values:
  - default
nkweb_Use_Custom:
  - 'false'
categories:
  - Coding
  - Informatics
  - Science
  - Technology
tags:
  - coding
  - datascience
  - github
  - linear regression

---
In the first part of the file tutorial2.py of [repository Tensorflow in my github][1], you have the commented version of the [MINST tutorial for experts][2] in Tensorflow.

Tensorflow is an opensource API for several languages that act as frontend for a machine learning backend that is quite flexible.

What I was surprised for is the result of this first small exercise, that is: you take the pixel of the MINST package for character recognition traning. You flatten them. A packet of 784 pixel serves as an ordinate of your linear regression, and the numbers from 0 to 9 (actually 10, than you flat it) as abscissa of possible values contained in the pixel packet.

A linear regression fitting the possible outcomes, even with a simple ordinary least squares and a fit a first order degree, results in an accuracy around 92%.

True, is terrible and embarrassing (as Google points out). After all, there only 10 options, missing 1 over 10 is not a great deal, but think about the feature here: image recognition with a linear regression!

I also made [a live youtube video about it (in Italian)][3], that received decent following (add 100 views).

_Now with the dubious part: _It might be this condition what makes neural network possible and feasible?

Now I'm trying to go a step further with nuclear mass models, and while image recognition are all fine and dandy, even a simple mass formula has several fractional exponents and a polynomial expansion to take into account. Fitting a non local density functional is something orders of magnitude more complicated!

In fact one of the limits that I'm noticing with Tensorflow is the choice of optmization algorithms, mostly (all?) based on derivatives (no Nelder-Mead, sadly), thus suited for well behaved systems but less for the complex ridges of energy landscapes.

Another issue is the limited optimization on multicore and massively multicore system. Still I have to manage to compile it under cluster. In my dual socket workstation with 20 cores HT Tensorflow insists in using only at most (but rarely) 4-5 cores...

 [1]: https://github.com/AndreaIdini/Tensorflow
 [2]: https://www.tensorflow.org/versions/r1.1/get_started/mnist/pros
 [3]: https://www.youtube.com/watch?v=ndweSdyhGKo