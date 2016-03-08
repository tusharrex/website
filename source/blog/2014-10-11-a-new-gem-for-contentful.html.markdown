---
title: A new gem for Contentful
date: 2014-10-11
tags: Ruby, Success Stories
author: Tomasz Warkocki
color: red
---

[Contentful](https://www.contentful.com/ "Contentful") is an API-first content management platform for web and mobile applications and the first cloud-based service to allow content to be distributed across any device, application or platform, with one single input.

Content is managed in a completely presentation-independent format and can be served to all current and future platforms, including iOS, Android, Google Glass or interactive JavaScript apps. There is no need to employ developers as the content can be managed by non-technical people with a click of a mouse.

Our team was approached by Contentful and asked to develop a Ruby Gem for working with the Content Management API for them. We took up the challenge and soon after Tomek W. “Warkocz” and Piotr sat down with the Contentful team and defined the needs and requirements drafting up a plan for development. They decided to follow the management API documentation to cover all the existing use cases. When that was done they got down to work and soon a new gem was born.

The Content Management API is meant to be used for managing content through Contentful website. In Contentful content is represented as Entries and Assets divided into Spaces. Apps and websites depend on the structure of Entries, so every Entry must comply to a specific Content Type. Assets represent binary files like images, videos and other media.

Entries are represented as JSON data; Assets are represented as (binary) files.

The API can be securely accessed via HTTPS and is only available to clients authenticating with an access token.

Managing content via an API has many benefits:

* Custom applications can use the API to manage content.
* Scripts can use the API to automate various tasks.
* Contentful's own content management web app is a user-friendly JavaScript application which is solely based on the API.

The Ruby Gem our team created is targeted at Ruby developers and helps them integrate Contentful into their Ruby-based projects. With the Ruby Gem developers can create custom-designed blog systems, data-driven websites, and even, social portals. It is very simple to use, and more details you can find in a Contentful [blog post.](https://www.contentful.com/blog/2014/08/19/introducing-the-content-management-gem/ "Contentful blog post")

The challenge our team faced was shaping the gem api into [ActiveRecord-like way](https://github.com/contentful/contentful-management.rb/blob/master/README.md "Gem Readme"). The benefit is that Ruby developers using the new gem could do so instinctively without any need of spending their time on learning new DSL totally from scratch.

Some of the code was inspired by existing Contentful Delivery API wrapping gem ([contentful.rb](https://github.com/contentful/contentful.rb "contentful gem")), especially [JSON response parsing](https://github.com/contentful/contentful-management.rb/blob/master/lib/contentful/management/resource_builder.rb "JSON response parsing").

The gem is internally using Thread.current for shared storage of client instance, which allows keeping state of the gem objects. It also has its drawbacks, for example a new client instance needs to be created for each newly created thread in [multithreaded environment.](https://github.com/contentful/contentful-management.rb/blob/master/lib/contentful/management/client.rb "multithreaded enviroment")

The most complex thing our team encountered during the development process was creating complex json structures which need to be passed to Contentful api server in order to [manipulate the data.](https://github.com/contentful/contentful-management.rb/blob/master/lib/contentful/management/content_type.rb "Manipulating data") The thing was even more complex because they needed to support also localized values for both [Entries and Assets](https://github.com/contentful/contentful-management.rb/blob/master/lib/contentful/management/entry.rb "Entries and Assets").

Also some Ruby metaprogramming features, such as dynamic methods and classes creation, were in heavy use here. These were mainly used for creating accessors for [Dynamic Entries](https://github.com/contentful/contentful-management.rb/blob/master/lib/contentful/management/dynamic_entry.rb "Dynamic Entries") objects to support Content Type fields which can be manipulated by the user. One of the most recent features Warkocz and Piotr added to the gem was support for gzip response content encoding, which reduces the network bandwidth need for user [data transfer](https://github.com/contentful/contentful-management.rb/blob/master/lib/contentful/management/response.rb "User data transfer").

Tomek and Piotr are currently working on the script and an example Rails app presenting full capacity of the Gem they created. They are also adding other features to the Ruby Gem for Contentful so be sure to regularly check updates on the [Contentful website](https://www.contentful.com/ "Contentful").