---
layout: post
title: "Building Software One at a Time"
date: 2026-02-08 10:00:00 -0500
categories: [general]
tags: blog
excerpt_separator: <!--more-->
---

I've spent the last few months talking about building things more than actually building them. You know the feeling -- endless planning, architecture debates with yourself, waiting for the "perfect" idea. So I did something simple: I picked one small project and just started.

<!--more-->

## Breaking the Inertia

After years of working on large-scale systems at Shopify, I forgot what it felt like to ship something small and self-contained. Everything at scale requires coordination, architecture reviews, and thinking three steps ahead. That's valuable, but it also builds a mental overhead that makes personal projects feel heavier than they need to be.

The solution? Build software one at a time. Not "one feature at a time" -- literally one complete thing before thinking about the next.

## Enter ProseKit

I started with ProseKit, a lightweight text editor framework. I won't pretend I picked it for some grand strategic reason. I needed a decent text editing experience for a side project, found ProseKit, and decided learning it counted as "building something."

Here's what I learned by actually using it instead of just reading the docs:

ProseKit gives you a clean editor with markdown support out of the box. The setup is straightforward:

```swift
import ProseKit

struct ContentView: View {
    @State private var content: String = ""
    
    var body: some View {
        ProseEditor(content: $content)
            .padding()
    }
}
```

That's it. You get a functional text editor. No configuration hell, no twenty different protocols to implement.

## What Actually Matters

Building this one thing taught me more than planning five things ever would:

**Start with working code.** I copy-pasted the basic example, ran it, and then modified it. No "designing the perfect architecture" first. The architecture revealed itself after I understood what I was actually building.

**Ship incomplete.** My first version didn't have image support, custom styling, or half the features I "needed." It had a text box that worked. That was enough to keep going.

**Let the tool guide you.** ProseKit has opinions about how text editing should work. Instead of fighting them, I learned what they were and adjusted my approach. The framework knows more about text editing than I do.

Here's a slightly more complete example that adds some customization:

```swift
import ProseKit

struct EditorView: View {
    @State private var content: String = ""
    
    var body: some View {
        VStack {
            ProseEditor(content: $content)
                .font(.system(size: 16))
                .padding()
            
            Text("\(content.count) characters")
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }
}
```

Nothing fancy. Just building on what works.

## The One Thing Rule

The real lesson here isn't about ProseKit specifically. It's about giving yourself permission to build one thing completely before starting the next.

Not one thing at a time -- that still lets you juggle three projects and make no progress on any of them. One thing, period. Make it work, ship it (even if "shipping" means using it yourself), and then decide what's next.

For me, that meant:
1. Learn ProseKit well enough to implement a basic editor
2. Use it in a real project
3. Write this post about it

No grand plans for "a suite of productivity tools" or "the ultimate markdown editor." Just one functional thing.

## Why This Works

Building small and complete creates momentum. Every finished thing -- no matter how simple -- proves you can ship. That sounds obvious, but if you're someone who's been stuck in planning mode, it's easy to forget.

It also forces clarity. When you commit to finishing one thing, you can't hide behind "I'm working on multiple projects." You either ship or you don't. That constraint is liberating.

And practically speaking, you learn faster. Using ProseKit in a real project taught me its quirks, limitations, and strengths in a few hours. Reading docs for a week wouldn't have done that.

## What I'm Taking Forward

I'm not going to pretend this is some revolutionary insight. "Focus on one thing" is probably the most common productivity advice ever given. But there's a difference between knowing it and doing it.

For me, doing it meant picking something small (learn ProseKit), building something real with it (an editor for my project), and shipping proof that I did it (this post). That's the cycle.

Next, I'll pick one more thing. Maybe it builds on ProseKit, maybe it doesn't. But it'll be one thing, and I'll finish it before moving on.

If you've been stuck in planning mode, try this: pick the smallest possible thing you could build this week. Not plan, build. Something you could show someone by Friday. Then actually do it.

You might be surprised how good it feels to ship again.