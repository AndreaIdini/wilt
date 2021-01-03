---
title: "MacPro's FirePro cards are actually a Radeon?"
author: Andrea Idini
type: post
date: 2014-03-17T19:54:25+00:00
url: /2014/03/17/macpros-firepro-cards-are-actually-a-radeon/
categories:
  - Informatics
  - Technology
tags:
  - apple
  - graphic card
  - hardware
  - workstation

---
Today I learned about the new MacPro (2013 model) and the associated D300, D500, D700 graphic cards, that are compared over and over with Firepro W series (W7000, W8000 and W9000) by professional reviewers, thus making the MacPro 3500$ and rising price tag sound like a gift (FirePro W cards go from 500 to 1500 $ each).

To my knowledge, the difference between professional (ATI FirePro and NVidia Quadro) and consumer (ATI Radeon and NVidia GeForce) graphic cards is not in number or clock of processors or memory (the architecture is exactly the same, for example, for ATI Radeon 7970 and Firepro W9000 and D700 but the first cost one third of the second for the reason below), but :<!--more-->

  * A different ASIC (functional chip) that enable the acceleration of different functions (especially for ATIs that rely heavily on polynomial acceleration, that's why they are better  than NVidias for bitcoin mining) and the handling of double precision numbers. With it the inclusion of hardware transcoding of popular codecs, that enable  real-time effortless video editing.
  * 30 bit of Color Depth.
  * genlock (synchronization of images with a reference frequency, in old times the power line one. A filmed screen, flickers. But if you genlock the cam and the screen, making use of the SDI port, it doesn't. Genlocking is important in video editing and production and is fundamental for having a professional output) and corresponding SDI sync.
  * Various functionalities that are not present in the consumer part (for example the multiOS of NVidia Quadro enables to graphically accelerate with SLI-connected cards, two OSs)
  * GDDR ECC.
  * Various modifications to increase reliability and resilience.

Considering that

  * OSX does not support 10 bit per channel,
  * there is no SDI port (and genlock function),
  * the D700 mounts normal GDDR and not the more trustable Error Checking & Correcting version present in the W9000,
  * I have yet to see a test for the double precision acceleration and improved reliability

I still have to understand why are called FirePro in the first place. The D700 is marketed as an undervolted and underclocked W9000, but actually there is no indication that it is not exactly a compactified Radeon 7970 (that has a price tag of less than 400$).

Moreover the D700, for example, is extremely underclocked having to bring the TDP from 275W to 108W (and with a total power sourge of around 400W the MacPro is a powerful, compact, silent and power-efficient machine, but so much for the "single fan cooling" philosophy since the dissipation of only 400W with heating around of 90° C on the graphic core is poor to say the least) and thus the performance are not the one that can be expected from such a card. Someone claim a reduction of the performance of just the 15%, but I would like to know more about how the performance can be reduced of only 15% with a power reduction of 65%...

## Comments

### Comment by zeze on 2016-04-09 10:54:04 +0100
What's up, I check your blogs regularly. Your humoristic style  
is witty, keep up the good work!