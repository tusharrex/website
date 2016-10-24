---
title: The power of code review
date: 2015-02-10
tags: Consulting, Hacker's Life
author: Magda Piechota
color: light-green
image: 'blog/submarine.png'
imageauthor: 'team/placeholder-green.png'
---

Developing products for clients puts a huge responsibility on all of us at code quest. Our goal is to deliver the best product, look-and-feel-wise as well as the quality-wise. And while the look-and-feel can be done with the client and users, asssuring that our quality standards are met would not be possible without the proper code review procedure we use for all our projects - big and small alike.

### What is code review?
Simply put, it is checking of the code written by one developer by other developers, assessing it and giving feedback. The primary goal of code reviews is to ensure code correctness and quality. We also gain something as a by-product of the code review, and that is the knowledge our junior devs get with every code review they have done.

### What is it for?
There are many purposes the code review serves. For us the main ones are:

* Checking the code correctness. Is it written properly? does it have any duplicates? Is it clean? Can it be done better?
* Does it serve the purpose it was intended for? Maybe it is over-designed, or over-engineered? (these things happen)
* Is it optimized? Is it refactored properly?

### What do we do?
In our code review routine we mix automated code review and manual code review.

The automated code review is good for the initial stage of reviewing as it speeds up the process by finding the common “code smells” (faulty pieces of code) quicker than a human. We use code-reviewing tools that are available online, but seeing their shortages we have decided to create our own tool, [codebeat](https://codebeat.co/ "codebeat"), that would fill in the gaps and provide us with more reliable data. [codebeat](https://codebeat.co/ "codebeat") will be available in March and you are most welcome to try it.

Manual review on the other hand takes more time, but is more thorough and gives better results. We use a pull request procedure, known to all the developers, to be sure the quality of the code we push onto production is verified before we actually push the code.

### How does a pull request work?
To make the process fairly simple:

* A developer creating a new feature or a bit of code works on their own branch. Once they feel they are done they push the code into Git repository and send a pull request to other team members notifying them of what, or the changes, they have done.
* Other team members review the code, comment and discuss possible modifications, and sometimes even push the follow-up commits if they feel they are necessary.
* If everything is ok, the developer who sent pull request merges the reviewed code with the master branch.
* If the pull request gets rejected, which means the code is not good enough; The developer corrects it using the comments he sees next to it. Depending on the situation,sometimes they does it on their own, sometimes we run a pair-programming where a senior developer overlooks the code being written by the junior. We then repeat step 1 and 2.

This process is done quickly as we cannot afford waiting for reviews. We aim at a maximum 48-hour review time, so the development process is not halted by a hanging pull request. And not only senior developers or team heads look at the PR, anybody on the team can do this and can add their comment. The discussion is always open. This ensures the best solution and code quality, as sometimes even junior devs can have adequate knowledge about a specific issue.

Such process ensures the code quality, open development process, and peer-learning within the team. And the rules are simple: collaboration (all team members look at the code), insight (no information is spared), safety (the code is kept outside of the master branch), branches (branches are good, but once you are done, you need to clean them).

### The traps of the code review
Code review is not perfect. There are some traps developers and software houses may fall into when using the code review procedure:

* Too much development time is wasted on waiting for code review
* Limiting the number of people who can do code review
* Merging a branch with old code after a refactoring the code on the master branch has been done (very messy)
* Too many long-running branches

All these are for real and we also made these mistakes in the past. This is why we created a strict code review procedure and now are striving to create codebeat, a good (if not the best) automated code reviewing tool to speed up the review process without losing on the quality.

We do believe code review is the key to a good quality code and a good quality product. And by mixing the automated code review with the manual one, and by keeping the procedures, we manage to achieve these goals without falling into the code review traps
