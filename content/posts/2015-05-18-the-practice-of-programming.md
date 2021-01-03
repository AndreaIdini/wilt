---
title: The Practice of Programming
author: Andrea Idini
type: post
date: 2015-05-18T21:34:32+00:00
url: /2015/05/18/the-practice-of-programming/
categories:
  - Coding
tags:
  - C++
  - practice
  - programming

---
I started reading "The Practice of Programming" by Kernigan and Pike.

The book hinges on the concepts of _simplicity_, _clarity_ and _generality_ as foundation of a good code. Eventually _automation_ can bring something to the table generating code from algorithms.

It starts by the usual "obvious" remarks about style:<!--more-->

  * consistency and standardization in the definition of variables: use nice names, short for local and long and descriptive for global variables and constants (never use bare numbers but define constants!);
  * minimize the usage of variables and definitions: e.g. use the length of vector intrinsic function to define the loops, instead of using the defined constant _(even though would not this make harder to spot and debug allocation issues and segfault?)_;
  * uses of idioms, that is the standard syntax, especially for loops and ifs; e.g.  
    `for(i=0;i<n;array[i]=0);`  
    can work for an initialization, but  
    `for(i=0;i<n;i++)<br />
array[i]=0;`  
    is more understandable both for a fluent and a beginner code reader;
  * proper indentation;
  * descriptive and consistent comments, don't state the obvious, maybe start to use doxygen ready code: "when the comment outweighs the code, the code probably needs fixing".

In second chapter goes on describing algorithms, the role of arrays as cheap storage of tabular sequential data and starts a bit of fun with the classic **Quicksort** and **Bisection** search.

Unfortunately sticking with C++ and Java arrays are defined with fixed size (eventually allocatable at big memory and computational expense, O(n^2) in case of growing one element at time), and thus the big difference with Lists as pointer linked elements. The book is also not very clear on the syntax of the list (against the modern C++ idiom, as own advise). So following the good advice in the book, instead of writing down poor code, I decided to write down my own notes on **Lists** in C++ for future reference.

Lists in C++ are called by defining a pointer to a structure Nametype, as  
`Nametype +next`  
thus an element of the list is defined as  
`struct generalList{<br />
... //whatever content<br />
generalList *next;<br />
}`  
where the asterisk refer to a [pointer in C++][1]. Then you can initialize  
`<br />
generalList *firstElement; //create a pointer to a memory area`

firstElement = new generalList; //prepare a memory area of due size

firstElement->... = ... ; //fills the content.  
firstElement->next= NULL; //the first element of the list does not point to anything

//Eventually this can go on  
generalList *lastElement;

And then at choice  
`<br />
//---- this piece follows the list head to tail pointer by pointer ----//<br />
lastElement = firstElement<br />
if ( lastElement != 0 ) {<br />
while ( lastElement ->next != 0)<br />
lastElement = lastElement ->next;<br />
}<br />
//--------------------------------//<br />
lastElement->next= new generalList; //create one last element, to the tail of the list, points to it<br />
lastElement = lastElement->next //go to it<br />
`  
`<br />
lastElement = new generalList;<br />
lastElement ->next = NULL;<br />
firstElement->next = lastElement; //first element point to the last created, that go at the front of the list.<br />
`  
and finally once positioned don't forget to fill it up  
`lastElement->... = ... ;` 

Lists can have a desired number of pointers, most commonly two (**_Doubly-linked lists_**), one for the next and one for the previous element of the list vastly facilitating and speeding up search and sorting (and basically making them glorified arrays).

A _**Tree**_ is another particular type of list, defined as

> a hierarchical data structure that stores a set of items in which each item has a value, may point to zero or more others, and is pointed to by exactly one other.

 [1]: http://www.cplusplus.com/doc/tutorial/pointers/