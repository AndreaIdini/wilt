---
title: 'C# Lists and Dictionary'
author: Andrea Idini
type: post
date: 2015-05-31T20:10:14+00:00
url: /2015/05/31/c-lists-and-dictionary/
categories:
  - Coding
tags:
  - C-sharp
  - C++
  - definition

---
In C# there are several key differences to C++. Microsoft Website spells them all: <https://msdn.microsoft.com/en-us/magazine/cc301520.aspx>

Garbage collector instead of deconstructors providing a different approach to micromenagment of memory and lists, jagged arrays and dynamic memory allocation are already available into the language. It supports also negative index to counting from the last element, similarly to Python.

About lists [instead of the usual self-made textbook-example class][1], there are specific embedded classes for Lists and Dictionaries.

`List<type> name = new List<type>();<br />
name.Add(element);<br />
name.Remove(element);<br />
` 

`Dictionary<type,type> name = new Dictionary<type,type>();<br />
name.Add(key,element);<br />
name.Remove(key,element);<br />
`

 [1]: http://www.phme.it/wilt/2015/05/18/the-practice-of-programming/