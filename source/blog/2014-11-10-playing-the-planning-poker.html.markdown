---
title: Playing the Planning Poker. Is it worth it?
date: 2014-11-10
tags: Scrum, Software Development
author: Magda Piechota
color: yellow
image: 'blog/ruby_underwater.png'
image_fb: 'blog/logo_fb.png'
imageauthor: 'team/placeholder-yellow.png'
---

People suck at estimating things, especially when it comes to the time required to complete a task. And developers, who are people, in case you forgot, suck at estimating the time required to code a feature or the feature’s difficulty. We must be born optimists as we usually underestimate and very rarely overestimate, and we are so bad at estimating that in 1979 a new term was coined by Daniel Kahneman and Amos Tversky to describe this phenomenon. We all fall victims to the infamous Planning Fallacy.

It would not be bad, we are all humans after all and all prone to make mistakes, but in business those mistakes result in time overruns which in turn result in faulty business decisions, cost overruns as well as benefit shortfalls.

The Planning Fallacy was so bad in software development studios that in order to have more precise estimations in the software development a Planning Poker and Story Points were introduced in Agile management.

## But why do we have so many problems with estimating?
We are not perfect, we know that. But this is not the only reason why we have problems estimating the production time. There are quite a few other factors contributing to the Planning Fallacy:

* hidden requirements - very often there are requirements that developers are not aware of while estimating the scope of work
* inaccurately defined scope
* scope changes during development
* external blockers - very often clients do not send their feedback on time, or there are some design assets missing, or a holiday season has begun and people have to do twice as much work as they normally do filling in for missing colleagues
* hidden technological blockers - bugs, library incompatibilities, lack of knowledge on a specific library or technology also influence the process
* developer’s bravado - we all think that we can get 7-8 hours a day of work on one project; or that we can do things quickly
* All these factors contribute to the estimation errors, which in turn result in delays and higher costs.

## Story Points
In Agile methodology story points are used to minimize the Planning Fallacy errors. Yes, we are bad at estimating precise time, but we are quite good at estimating the complexity of a given task. We are also good at comparing the tasks and getting even better complexity estimation. This relative complexity rule helps developers assign points to various tasks through comparison.

Let’s say we have a simple task which we think will be of 1 point difficulty, a task that is twice as complex as the first one will get 2 points, a more complex task may get 3 or 5 or more points. By making the tasks relative to each other and comparing them we get a better feel of their complexity and the time required to finish them. At code quest we use a Fibonacci scale with the following values to estimate the tasks: 1, 2, 3, 5, 8, 13, where 1 is a very simple task, while 13, albeit rarely used, is a very complex story.

Since we have been doing it for quite some time now, our people already know which tasks are the 1 point ones, so they get their references quickly. But if you are starting your adventure with story points, a good solution would be to find the simplest story/task in your project backlog and use it as your reference point for all other tasks. After several planning meetings, your people will get the hang of assigning the points to the tasks.

It is a good idea to keep your point estimations next to the tasks so they are always visible. We use Jira as our tracking software and the points are assigned to each user story we put in a backlog, so everybody can see them when they open the project board.

## Playing the poker
Our weekly planning meetings remind me of a developer brainstorming. It is very important to engage every team member in the estimation sessions. The questions, the tips or past experiences of other team members may contribute to the overall estimation of the task complexity and difficulty. For example, a task that looks fairly simple to the backend developer, may be quite complex on the front-end side; or a tester may bluntly tell you that it will be a very difficult feature to test. The more actively people participate in the session, the more accurate the estimation will be.

## And how do we play the poker?
During the planning meeting, each team member is given a deck of cards containing our Fibonacci numbers, plus two extra cards for tasks “too complex to estimate”, and “too vague to estimate”. Then the product owner goes through each task explaining it in detail (the team can ask questions if they are not fully satisfied with the PO’s description). Once everybody feels they have all the information they need for estimation, and they have chosen their number, the poker begins. On the count of three, the team show their cards. If the numbers don’t match, the team discuss the task further and reevaluate until they all give the same number. It is very important to remember that the discussion should be focused on the scope of the task and not the estimation decisions. It is also critical to remember that during the estimation we are not evaluating the time, but the complexity of the task.

We go through every story in the backlog, evaluating its complexity and inputting the points into our Jira project board. Once we are done, it is easy to group the stories into sprints and assign production time to each one.

## Why is it good to play the poker?
Not only the estimation is better, resulting in better business performance, but also, thanks to the poker, technological risks can be identified, task scope gets clarified and more detailed, team members share their knowledge, hidden requirements may be detected, complex tasks may be redefined and split into smaller ones.

It all delivers to the quality of the process and programming in the project, resulting in the quality of the product and happiness of the client.
