---
layout: post
title: "Hello World, Again"
date: 2026-02-08 12:00:00 -0500
categories: general
tags: meta blog
excerpt_separator: <!--more-->
---

I've been meaning to get back to writing for a while now. The old blog sat collecting dust while I spent my time actually building things -- shipping features, experimenting with new frameworks, and more recently, working with Claude on just about everything.

<!--more-->

## What changed

Honestly, I stopped writing because I stopped having time to write. Between work and side projects, sitting down to craft a 1500-word post felt like a luxury I couldn't afford. The irony is that I had more things worth writing about than ever.

So I did what any engineer would do: I automated it.

## How this works now

This blog is now powered by a pipeline that looks like this:

1. I keep a queue of topics I want to write about
2. A GitHub Action calls Claude's API to draft the post
3. Claude writes it in my voice, following a style guide I put together
4. A pull request gets created automatically
5. I review, edit, and merge -- the site deploys on its own

I'm still the editor. Every post gets reviewed before it goes live. But the first draft? That's Claude's job now.

## Why this matters

The bottleneck was never ideas. It was the activation energy to turn an idea into a published post. By removing the blank-page problem, I can focus on what I actually care about: making sure the content is accurate, useful, and sounds like me.

More posts coming soon. If you want to see how the pipeline works under the hood, that'll be the next one.
