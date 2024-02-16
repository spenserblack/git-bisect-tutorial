# Git Bisect Tutorial

This is a repository to teach the basics of `git bisect`. It simulates finding
a bug in a file that was intentionally written to make it difficult to use
`git blame` for the same task.

## Challenge

### Introduction

We have a _very_ important file, called [`file.txt`][buggy-file]. We want to be absolutely
sure that it doesn't contain any bugs (🐛). If but if you
[open the file...][buggy-file]

Oh no! There's a bug!

🤔 But when did we introduce the bug?

### Task

First, [clone this repository](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository).

To get you started, let's assume that we already know that our file was good at version 1.0.0 (tagged `v1.0.0`). But it's bad now! So let's start
our bisect:

```shell
git bisect start
git bisect bad
git bisect good v1.0.0
```

Now, the bisect should have checked out a halfway point between our known
good commit and bad commit. Open up `file.txt`. Is the bug
still there? If there is a bug, call `git bisect bad` again. If we don't
have a bug, call `git bisect good`. Once again, you'll git will jump to
a new halfway point. Look at `file.txt` again. Again, call either
`git bisect good` or `git bisect bad`. Continue this a few times, and
you will eventually find the first bad commit that introduced the bug!

### Wrap up

Did you find the first commit that introduced the bug? Now that you're
finished bisecting, call `git bisect reset` to return things to how
they were.

While this challenge was a silly example to get you used to `git bisect`,
note that this command can be very helpful for finding when *real* bugs
were introduced into a project. When you can see what change *added* a
bug, it can become easier to understand what you need to do to fix the
bug.


## More things to consider

To make `git bisect` as useful as possible, how should you write your
commits? If you occasionally make really big commits that change a
bunch of things at once, would a bisect be useful? Or would it be
better to make several smaller commits that each change one thing?

[buggy-file]: ./file.txt
