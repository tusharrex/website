---
title: How to report bugs
date: 2014-10-13
tags: Consulting, Development
author: Magda Piechota
color: light-green
---

So your dev team have created this new app for your client. You are very proud of it and want to show it the entire world. But before you tell the client the good news you have to test the app to find the bugs and have your team fix them. Finding bugs is relatively easy, you just use the app with every possible scenario and check whether it works as it is supposed to be working. What you are really interested in are the misbehaviors of the app, the failures, the crashes, and so on. The things that were not planned for the app. And certainly you find them, but what next? How to show them to the team? How to tell them what and when went wrong? You can run to your devs each time you find a bug and show it to them telling them how you encountered the thing. Sometimes this even works. But with dev teams spread over the globe it may be slightly inconvenient or even impossible. You need an easy and detailed way to put the descriptions of the bugs along with the step-by-step guide on how to recreate them.

At code quest we use a template for inputting bug descriptions into our JIRA spaces. It is very precise and if you only stick to it, anybody really can become fluent in reporting the bugs. Even that non-technical client of yours.

### How to report bugs?
So, how do we do it? Here is a little walkthrough:

### Bug title
Give it a meaningful but short title, for example “pie chart colors display incorrectly”.

### Date seen
Define the time when you noticed the bug - the more detailed the time, the better. You can put the date and the exact time of the day. It is important to the devs.

### Environment
In an ideal situation with Quality Assurance in place, you will have three different environments: Development, Staging, and Production. Each one is visible to a different group of people in the company: Development - is mostly where the company developers operate, Staging is for both company devs and clients review, and Production is for the final product released to the world. In order to help the developer identify the bug you need to state the development version of the environment you are testing and noticed the bug in, namely the Development, Staging or Production.

### Versions
Now, specify the operating system and its version you were using when you discovered the bug, as well as the software name and its version. You can add the names and versions of any applicable software (for example web browsers) you have installed on your machine. This is a crucial piece of information your developers need to recreate the bug in exactly the same environment in their location.

### Bug description
What follows is a concise description of what the problem is. Remember to keep it a pure description, no narrative or conversational language used here.

### Priority
When the description is in place, the time comes to define the severity of the bug - is it something really really small? Or maybe a total disaster stopping the app from working? You have five levels to choose from: Trivial, Minor, Major, Critical, or Blocker. Use them to signal the problem’s importance to your dev team.

### Steps to reproduce
And now comes the tricky part, the point at which you have to show how good you were observing the app’s behavior, the step-by-step guide leading to a reproduction of the bug appearance in the app. Give simple, yet detailed instructions on what to do. Do not assume anything, or rather, assume that the person who will be reading the instructions does not know the app at all. The more detailed your list of instructions is, the easier for the developer it will be to recreate and track down the problem. Do not panic, be methodical, keep your feet on the ground and your head cool.

### Actual Behavior
On top of the pure instructions list, you need to add a narrative of what actually happens when you follow the instructions. Do not spare any gory details, the more the better. After all, this is the manifestation of the bug you are describing!

### Expected Behavior
Here is the place to put what you expected to happen when you followed the step-by-step guide. Again it is a narrative, do not be too economical with your words. This is an important part of the bug report, because you may have misunderstood something or missed a step, and knowing what you expected to see will help the developer recognize that.

### Troubleshooting/Testing Steps Attempted
If you tried to fix the bug on your own, write about it. Describe anything you did - be it an app restart, a device reset, or a code check.

If you follow our template, you will soon gain good reporting skills describing the bugs to your dev team with easiness and swiftness you never suspected yourself to have. All you need now is to learn to stay focused, be observant and pay attention to the detail. Observing your each move, each click or tap is crucial, as later you will be reporting them to your developers.

But if you want to become a good app tester, this is just the beginning of the journey...