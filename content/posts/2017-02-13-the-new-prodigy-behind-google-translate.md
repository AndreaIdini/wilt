---
title: The new prodigy behind Google translate
author: Andrea Idini
type: post
date: 2017-02-13T18:12:41+00:00
url: /2017/02/13/the-new-prodigy-behind-google-translate/
nkweb_code_in_head:
  - default
nkweb_Use_Custom_js:
  - default
nkweb_Use_Custom_Values:
  - default
nkweb_Use_Custom:
  - 'false'
categories:
  - Informatics
  - Science
  - Technology
tags:
  - machine learning
  - programming

---
I read a lot of misconceptions this morning related to [this article][1] regarding Google Translate.  Is not properly fresh news but this morning in my telegram group @scienza, [this other popularization article][2] has been posted that completely misunderstood the premises of [the original academic article][3] (also the so-called informed comments are not really , so I decided to try to keep the record straight and offer a question.

In the article the approach is referred as a multitasking learning framework

> Our approach is related to the multitask learning framework [4]. Despite its promise, this framework  
> has seen limited practical success in real world applications. In speech recognition, there have been many  
> successful reports of modeling multiple languages using a single model (see [17] for an extensive reference and  
> references therein). Multilingual language processing has also shown to be successful in domains other than  
> translation [9, 23].

where a neural network (NN) is trained on several tasks simply by implementing extra tokens (in this case the languages) in the input and ground truth layers. The NN will learn all the designated languages simultaneously by associating phrases with ground truth respect to designated linguistic points ([BLEU scores][4]) for the whole network and not disjunctly by direct correlation of two languages. In a sense, it probes the off diagonal degrees of freedom of the NN.

What a lot of people then started fantasising a little bit too much about is the "interlingua" process. My guy referred to it even as to a bytecode correspondence between languages that would be unfeasible and would defy too much the purpose of this NN: this has been tried to re-code as little as possible of the original _Translate _algorithm (that already includes all the semantic, glottology...etc... work of Google's researchers and engineers), and an eventual bytecode would be not flexible and would require a complete overhaul of the code!

What Google Researchers have seen in the NN, is that the same phrase clusterize in different languages according to a specific metric: [t-distributed stochastic neighbor embedding][5], which is a sophisticated projection which reduces dimensionality while preserving pairwise distances (thus creating a low-dimensional metric space).

I wonder: what if I change metric, would I be able to clusterize, according to another metric, the languages?

 [1]: https://research.googleblog.com/2016/11/zero-shot-translation-with-googles.html
 [2]: https://medium.freecodecamp.com/the-mind-blowing-ai-announcement-from-google-that-you-probably-missed-2ffd31334805#.vuyuaxt0e
 [3]: https://arxiv.org/abs/1611.04558
 [4]: https://en.wikipedia.org/wiki/BLEU
 [5]: https://en.wikipedia.org/wiki/T-distributed_stochastic_neighbor_embedding