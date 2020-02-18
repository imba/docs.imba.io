# Imba Behind The Scenes 🟡

It would be good to explain how Imba works behind the scenes

## Parsers & Engines

## Executionn Contexts

Execution Contexts and the Execution Stack.  
Like JavaScript, the default context of execution is the Global Execution Context.

That means that 

```ruby
lastName is window.lastName
```

Almost like `lastName` is a property of `window`

When a function is called, it creates its own Execution Context. Functions can also be called within functions, leading to what is called Execution Stacking as we'll learn in the next lesson.

> 💡The global context is the default Execution Context for code that is not inside any function.

## Execution Stack

Two things to remember for this lesson:

* Functions execute in the order they are called, not in the order they are written.
* When a function does all it can do, we say **the function returned**.

A function returns when it has done all it can do, but functions can be called within functions. That means that a function will not return until the nested function has returned.

In the example below I assign the value of the `status` variable via the `uno` function, but the `uno` function calls the `dos` function, which in turn calls the `tres` . See if you can follow what happens.

```ruby
let status = 'start'
console.log status # logs status >> start
status = uno # uno function is called
def uno
	console.log 'first' # logs when uno is called >> first
	dos() # dos function is called
	console.log 'fifth' # logs, then returns to status >> fifth
	status = 'done'
def dos
	console.log 'second' # logs when dos is called >> second
	tres() # tres function is called
	console.log 'fourth' # logs, then returns to uno >> fourth
def tres()
	console.log 'third' # logs, when tres is called, then returns to dos >> third
console.log status # logs value of status
```

> Play with this code on [Scrimba.com](https://scrimba.com/c/cg3pbntP)

The console looks like this:

```ruby
> start
> first
> second
> third
> fourth
> fifth
> done
```

If you noticed the functions were executed and returned in the following order.

```bash
┏ global # executes, calls uno
┣╸uno # executes, calls dos
┣━ dos # executes, calls tres
┣━━ tres # executes, returns
┣━ dos # returns
┣╸uno # returns
┗ global # returns
```

If you noticed `uno` was the first one to execute, but the last one to return. And `tres` was the last to execute but the first one to return.

When `uno` is called, `uno` is **added to the Execution Stack**, and we now have the `uno` Execution Context **on top of** the global Execution Context.

Then `uno` calls `dos`,  `dos` is **added to the Execution Stack.** We then have the `dos` Execution Context **on top of** `uno` that needs to return before`uno` can return.

Then `dos` calls  `tres` ,  `tres` is **added to the Execution Stack**. We then have the `tres` Execution Context **on top of** `dos` that needs to return before `dos` can return.

Then `tres` is executed, but it has **no other functions to call**, so when it's done, it returns. Its Execution Context is no longer needed, and it is **removed from the stack**.

Now `dos` resumes and **returns**. Its own Execution Context is then also removed from the stack. 

Now `uno` also resumes and **returns**. Its own Execution Context is removed from the stack.

We are now back to the _Global Execution Context_, where `console.log status` was next in line.

  


## Creation and Execution Phases and Hoisting

In the last page you learned about when an Execution Context is created.   
Let's learn how the Execution Context is created.

As we saw in the last page, we can associate an Execution Context with an Object, and this object has three properties. 

```text
Execution Context Object
┣━ Variable Object (VO)
┣━ Scope chain
┗━ "This" Variable
```

**The Variable Object**, which will contain the function arguments, inner variable declarations, and function declarations.

**The Scope Chain**, which contains the current variable objects, as well as all the variable objects of all its parents.

**`This` Variable**, we have already seen in action in the introductory lecture about objects.

> **📌 Explain this in Imba**

## How Execution Context is Created.

When a function is called a new execution context is put on top of the execution stack. This happens in two phases:

1. Creation Phase
2. Execution Phase

In the _Creation Phase_ we have:

1. The Creation of the **Variable Object**.
2. The Creation of the Scope chain
3. The `this` variable is determined and set.

In the _Execution Phase_:

1. The code of the function that generated the current execution context is run line by line.
2. If it's the global context, then it is the global code that is run line by line.

### The Variable Object

1. The argument object is created, containing all the arguments that were passed into the function
2. Code is scanned for **function declarations**: for each function, a property is created in the Variable Object, **pointing to the function.**
3. Code is scanned for **variable declarations:** for each variable, a property is created in the Variable Object, and set to undefined.

When the steps 2 and 3 above take place, is ****commonly called **hoisting.**

Functions and Variables are hoisted in JS, which means that they are available before the _Execution Phase_ actually starts.

#### Difference between Function & Variable Hoisting

* Functions are already defined before the execution phase actually start.
* Variables are set to undefined and will only be defined during the _Execution Phase._

**Summary:**

Each Execution Context has an object which stores a lot of important data that the function will use while its running. This happens before the code is executed.

\*\*\*\*

  




## Scope & Scope Chain

## This Keyword & Self

Delete if it's not a necessary explanation  
In v2 `@` is now the same as `self.`.

