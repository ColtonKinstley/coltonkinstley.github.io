---
layout: blog
title: The Three Urns
time: 2018-07-10 10:10:00 0100
permalink: /blog/the-three-urns/
categories: statistics probability
image: balls-lg.jpg
comments: "(This article was adapted from an example in <em>A First Course in Probability</em> [Ros10])"
further:
  - supertask:  
    text: Learn more about supertasks on wikipedia.
    link: https://en.wikipedia.org/wiki/Supertask
  - cardinals:
    text: Learn more about cardinal arithmetic on wikipedia.
    link: https://en.wikipedia.org/wiki/Cardinal_number#Cardinal_arithmetic
references:
- "[Ros10] S.M. Ross. <em>A First Course in Probability.</em> Pearson Prentice Hall, 2010.: 46-48"
---

As I mentioned in my previous post I would like to give and example of why we need to bring measure theory into probability. This amounts to showing that there exist certain events that, for whatever reason, cannot be assigned a probability. And, therefore we must make a decision to only focus on some events and ignore others. In some sense this is a straightforward exercise, you'll find some some version of it at the beginning of any introductory book on rigorous probability theory or measure theory. On the other hand the creation of this event utilises some techniques that are not widely used outside of mathematics, and thus we will have to spend some time discussing some seemingly unrelated ideas before I can get to the punchline. In light of this upcoming detour I thought I would wet your apatite for this journey in the weird and wonderful world of probability by discussing a short thought experiment that illustrates what unexpected outcomes can arise from random processes. As with many good stories, this one comes in three parts.

### An infinite task

We will need to talk about the "completion" of an infinite process in this experiment. If you are happy with this idea as it stands that's great, but if your imagination needs a little more prodding to get on board you can think of these processes as [supertasks.][1] The basic idea here is to the first step of the process in $$\frac{1}{2}$$ minute, the next in $$\frac{1}{4}$$ and in general each subsequent step will be done twice as quickly (or equivalently take half as long) as the preceding one. Since the sum is of a convergent geometric series, the time that the total process takes is


$$
\frac{1}{2} + \frac{1}{4} + \frac{1}{8} + \dots = \sum_{i=1}^\infty \frac{1}{2^i} = \frac{\frac{1}{2}}{1-\frac{1}{2}}=1 \text{ min.}
$$

So we have completed our infinite task in a finite amount of time. 

### The first urn

Okay, now that we have the supertask out of the way let's talk about the actual procedure. Imagine an infinitely large urn stands before you and next to it are infinitely many balls numbered 1, 2, 3, $$\dots$$ The process goes like this:

1. Place the balls numbered 1-10 into the urn. Remove ball number 10.
1. Place the balls numbered 11-20 into the urn. Remove ball number 20.
1. Place the balls numbered 21-30 into the urn. Remove ball number 30.
1. \$$\dots\$$

My question is, at the end of this process, how many balls are left in the urn and how many balls have you removed from the urn? Alright, this isn't so hard, let's figure out how many balls are in the urn. Well, at each step you introduce a total of 9 new balls which are never removed so $$9+9+9+ \dots$$ is an infinite sum of positive integers, we conclude that there are infinitely many balls left in the urn. Likewise we remove one ball at each of our infinitely many steps and we have removed infinitely many balls. If this is your first time playing with the infinite then you may be surprised to see that we seem to have made two infinities from one. This isn't *so* surprising though if you remember that there are infinitely many even integers and infinitely many odd integers, we put them together and get that there are... infinitely many integers, that makes sense. This kind of addition applied to infinite sets is called [cardinal arithmetic.][2]

### The second urn

Now for the second task, using the same balls and same urn as before, the new procedure is:

1. Place the balls numbered 1-10 into the urn. Remove ball number 1.
1. Place the balls numbered 11-20 into the urn. Remove ball number 2.
1. Place the balls numbered 21-30 into the urn. Remove ball number 3.
1. \$$\dots\$$

Same question: In the end, how many balls did we take out, how many are left? However, in this case we get a very different answer. We have removed infinitely many balls, that much is clear. But, what is left in the urn? At first you might be tempted to simply repeat the arithmetic from last time, we put ten in and take one out, that's nine new balls in each step. But, something has changed in the *way* we removed the balls, now no ball remains untouched and there are none left in the end. How can we see this? Let's suppose that there were some balls left in the urn. One of them would be the smallest numbered ball and say the number of that ball is $$n$$. But, that ball cannot be left in the urn because it was removed in step number $$n$$, so saying that there are any balls left in the urn is like saying that there is a largest integer, which we know isn't true. So we must conclude that there aren't any  balls left in the urn.

### The final urn

So far we haven't even mentioned probability in our urn scenarios. But, that is about to change because in the final situation our process is:

1. Place the balls numbered 1-10 into the urn. Remove one ball from the urn at random.
1. Place the balls numbered 11-20 into the urn. Remove one ball from the urn at random.
1. Place the balls numbered 21-30 into the urn. Remove one ball from the urn at random.
1. \$$\dots\$$

The question is the same as before and I encourage you to stop and think about what is going to happen. Again, it's clear that there are infinitely man balls removed ($$1+1+1+\dots$$) but what about the balls in the urn? It's important to realise that neither of our arguments above apply to this new probabilistic situation. In our first urn we knew that certain balls would remain untouched for all subsequent steps, but in this case each ball has some probability of being selected for removal in each step. In the second situation we relied on our knowledge of the method of removal to conclude that there was only one situation consistent with our knowledge of the properties of the integers. However, in this case we have no such knowledge of the order of removal, balls are removed at random. So we must make a conjecture an make an entirely new argument to support our conclusion.

Let's start by calculating the probability that a given ball is still in the urn at a given step, say step number $$n$$. We will assume that the ball is one of the first ten introduced into the urn, in the end this will not matter as the argument will adaptable to any ball we choose. The probability that our ball is still in the urn after the first step is $$\frac{9}{10}$$, it is the complement of the probability that the ball is chosen in step 1. (i.e. $$1-\frac{1}{10}$$) Similarly, after one ball is removed the probability that our ball is not selected in step 2 is $$\frac{9}{10} \cdot \frac{18}{19}$$, since we want the probability of the event that the ball remains in step one **and** step two and the draws are independent. In general the probability that the ball remains untouched in step $$n$$ is given by the product

$$
\prod_{i=1}^n \frac{9i}{9i+1}.
$$

Thus the probability that any of the first ten balls remain is the limit of this product as $$n$$ tends to infinity. In fact since the step the ball is introduced in on changes at what term we start this infinite product, it's limit gives the probability that *any* ball remains at the end of the process. It so happens that

$$
\prod_{i=1}^\infty \frac{9i}{9i+1} = 0.
$$

Showing that this product diverges to zero as $$n$$ goes to infinity is slightly beyond the scope of this article, see original problem in the references if you want a complete proof. But if you can accept that this is indeed the limit, then you left with a very startling conclusion; even though we are adding many more balls than we are taking out at each step, again the urn is empty at the end of the process, since the probability that any ball remains is 0.

### Hold on just a minute there...

You are probably wondering if that finite product can be extended so cavalierly to give us the probability that we are after. That's a good question. The fact is, it can be in this case, but the answer in general is no, it cannot. Under what conditions we can take these limits is the subject of every introductory book on probability theory and more generally of measure and integration theory. In fact, there are several types of convergence which have been developed by mathematicians to make these limits precise.

I know that this story is ending on a somewhat awkward tone. More questions have certainly been raised than answered. But, it is my hope that some of the ideas mentioned here inspire you to take a closer and more measured look at the subject of statistics as it arises in your own life. And, that you are more intrigued than ever to find out what event is so strange that no probability can be attached to it. Find out next time!
 

[1]: https://en.wikipedia.org/wiki/Supertask
[2]: https://en.wikipedia.org/wiki/Cardinal_number#Cardinal_arithmetic
