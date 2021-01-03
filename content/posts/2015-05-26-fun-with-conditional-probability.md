---
title: Fun with conditional probability
author: Andrea Idini
type: post
date: 2015-05-26T21:05:56+00:00
url: /2015/05/26/fun-with-conditional-probability/
categories:
  - Probability
  - Science
tags:
  - conditional probability
  - definition
  - probability

---
Bayesian concept of probability is linked not with frequency, but with state of information. The processing of this information proceeds in a propositional sense. In fact there are semantic work related to the use of Bayesian statistic as foundation for programming languages ([BLOG][1]), First kind logic ([MEBN][2] , also look at the fun [Of Starships and Klingon][3]) and thus the foundation principles of Network-Centric warfare and commerce.

Property of Baysian calculation of proabability are sometimes difficult to grasp and very counter intuitive, interesting consideration can hide behind apparently trivial formulas that can help to answer questions like: _If you know your neighbour has a son born on Tuesday, which is the probability your neighbour has two sons?_<!--more-->

<p style='text-align:center;'>
  <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_c86d2f8f95128330ef05f0879d83b892.gif' style='' class='tex'" /></span>
</p>

The conditional probability for two events, the probability of <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_7fc56270e7a70fa81a5935b72eacbe29.gif' style=' ' class='tex'" /></span> happening given that <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_9d5ed678fe57bcca610140957afab571.gif' style=' padding-bottom:1px;' class='tex'" /></span> has happened, is given by the probability of both <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_7fc56270e7a70fa81a5935b72eacbe29.gif' style=' ' class='tex'" /></span> and <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_9d5ed678fe57bcca610140957afab571.gif' style=' padding-bottom:1px;' class='tex'" /></span> happening divided by the probability of <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_9d5ed678fe57bcca610140957afab571.gif' style=' padding-bottom:1px;' class='tex'" /></span> happening.  
If A and B are independent events, like two consequent dice rolls, it gives that <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_6aa599d18c8ad47b1e45f53696aca698.gif' style=' ' class='tex'" /></span>.

We consider for the following examples that the probability of a child to be born male or female is always exactly 1/2.

 _If your neighbour has 2 children which is the probability they are two sons?_

 __With the approximation above, is of course 1/4 since the probability is 1/2 each time and uncorrelated.

 _However, if you know that one of the children is male, which is the probability your neighbour has two sons?_ 

The probability of the other being his little brother is not 1/4 again, and neither 1/2 as one could be tempted to say considering the uncorrelated variables argument, but 1/3. Since you introduce information in the system the probability function is perturbed in a similar fashion than the Quantum Mechanics observation (in fact there are a bayesian and a frequentist interpretation to QM!), since probability does not represent a frequency but an information state.

This can be easily seen considering the available phase space in a **traditional probabilistic interpretation**:  
In the first example the phase space was given by <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_089ced7ee189d30bb46114e6c54d6110.gif' style=' ' class='tex'" /></span> where B stands for Boy and G stands for Girl, and each of these cases (Two Boys, Older Boy and Younger Girl, Older Girl and Younger Boy, Two Girls) is equiprobable since they are uncorrelated events.  
Since you know one child is a male, than could not be <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_86d8d92aba9ecf9bbf89f69cb3e49588.gif' style=' ' class='tex'" /></span> and thus the phase space reduces to <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_9d9ea7e6a7140a5d2472cb609d34df33.gif' style=' ' class='tex'" /></span> and in a traditional frequetionist view of probability, since each born is uncorrelated to the previous (again in this view) you have 1/3 of probability for each combination. If gain the information that this son is also the older, the phase space reduces furthermore to the familiar 1/2.

Considering the **Bayesian interpretation of probability** the result is the same, with the advantage that can be generalized more easily, since it does not rely on the varying dimension of the phase space but always considers the ergodic, information zero, phase space:

<p style='text-align:center;'>
  <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_199324aa435f147b1409f71260818b77.gif' style='' class='tex'" /></span>
</p>

  
with <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_0205674110bad331eb5d25fe98672fa9.gif' style=' ' class='tex'" /></span> the probability of having two boys.

While in the case that you know that the Older child is male:

<p style='text-align:center;'>
  <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_80cedf5bda41460806b752d1947a47c4.gif' style='' class='tex'" /></span>
</p>

 _But, after this, let's consider the case that your neighbour comes to dinner which one of his children, a son, which you know to be randomly selected between his brother/sister to come. Which is the probability your neighbour has two sons?_ 

Now you may have a little hope left that things are normal: "what difference does it makes how do I meet the male son? It should be similar to the previous case!"  
Wrong indeed! Since you have now an additional information: the fact that the son has been selected at random implies an additional step, thus a different weight and a different probability if he has a brother or a sister.

This would be very difficoult to come up with the solution using the frequentist approach, since the variables start to be correlated and the calculation of the phase space start to be not trivial.

The Bayesian frequency is easily done: we define the event <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_3a3ea00cfc35332cedf6e5e9a32e94da.gif' style=' padding-bottom:1px;' class='tex'" /></span> that the randomly selected child at dinner is a boy.  


<p style='text-align:center;'>
  <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_deaa9cd695c5cc773d20219f781b5067.gif' style='' class='tex'" /></span>
</p>

  
considering that the probability of event <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_3a3ea00cfc35332cedf6e5e9a32e94da.gif' style=' padding-bottom:1px;' class='tex'" /></span> for the case of two sons is 1, for one boy and one girl is 1/2, for 2 girls is obviously 0.

Now let's consider another trivia:  _If you know your neighbour has a son born on Tuesday, which is the probability your neighbour has two sons?_

This classic trivia proposed by Martin Gardner in 1959 on Scientific American, that can surprise your dinner guests but you have by now understood what's the drill. That can be solved both by considering the phase space, for which you need a good drawing board and time to count dots in such a nice article by Science News (https://www.sciencenews.org/article/when-intuition-and-math-probably-look-wrong), can be more swiftly solved used Bayesian probability. If we consider the event <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_3a3ea00cfc35332cedf6e5e9a32e94da.gif' style=' padding-bottom:1px;' class='tex'" /></span> that One child is male and Born on Tuesday,

<p style='text-align:center;'>
  <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_eac65d09191c2f1c1a7d50a5cfb25b66.gif' style='' class='tex'" /></span>
</p>

Now making use of the same definition of conditional probability and commutative property of <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_2198db912e7df085b4fbdff0c7f8f01c.gif' style=' padding-bottom:1px;' class='tex'" /></span> operator we can deduce  


<p style='text-align:center;'>
  <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_2d2fae87c3e2ac7c3c97b09b5c8be3ca.gif' style='' class='tex'" /></span>
</p>

<span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_1a3904cfe8ab9750db4cdbf97a1653f7.gif' style=' ' class='tex'" /></span> is much easier to calculate than the opposite. Giving they are two males the probability of one to be born in Tuesday is <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_1cec39394a003e1e4fde4a36fd85de35.gif' style=' ' class='tex'" /></span> could be, this time more easily, calculated with the frequentist approach (phase space is a square of 7 days, Tuesdays column and line filled with the case under consideration).

<p style='text-align:center;'>
  <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_0a3950f3502ee743f2b84ec9fd7dbe09.gif' style='' class='tex'" /></span>
</p>

<p style='text-align:center;'>
  <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_121edbc5894e473f579f0ceddd3e821a.gif' style='' class='tex'" /></span>
</p>

<p style='text-align:center;'>
  <span class='MathJax_Preview'><img src="/wilt/wp-content/plugins/latex/cache/tex_4c0d44078f0ece6743fc7d1acbaf8a35.gif' style='' class='tex'" /></span>
</p>

 _13/27 is the final answer._ To be noted that an apparently a very small information introduced in the system (day of the week born), can skew the probability a lot. 13/27 is very close to 1/2 respect to 1/3, which is the probability when a "big" information has been introduced (e.g. the boy is the oldest/youngest).

https://en.wikipedia.org/wiki/Boy\_or\_Girl_paradox

 [1]: http://bayesianlogic.github.io/
 [2]: http://seor.gmu.edu/~klaskey/papers/Laskey_MEBN_Logic.pdf
 [3]: http://arxiv.org/ftp/arxiv/papers/1207/1207.1354.pdf