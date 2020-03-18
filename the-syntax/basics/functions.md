---
description: Examples of functions
---

# Functions

There are two types of functions in Imba; methods and blocks.  
In JavaScript, they're known respectively as _Function Declarations_, and _Function Expressions._

{% hint style="info" %}
Imba automatically returns the last expression of the function.
{% endhint %}

## Function Methods \(Declarations\)

```ruby
def randomize
	Math.random()
```

#### Single Argument

```ruby
def square num
    num * num
```

#### Optional Argument

```ruby
def call url, method = 'GET'
	console.log(method, url)
	// do some work here
```

#### Varying Number of Arguments

If you don't know how many arguments are going to be passed in or are trying to be flexible there is a syntax for that

```ruby
TODO: add example
```

#### Named Parameters

```ruby
TODO: add example
```

## Function Blocks \(Expressions\)

```ruby
var square = do |v| v * v
```

Blocks are like anonymous function expressions in JavaScript. They can be assigned and passed around. They have their own lexical scope / closure, but no dynamic scope. This means that self \(implicit _and_ explicit\) inside the block still refers to the self of the outer scope.

Blocks can be passed in directly when calling functions, as the last argument.

```ruby
[1,2,3,4].map do |num| num * 2

item.save do
    # callback trigger when item is saved?
    console.log 'item was saved'
```

> [🎮 Play with this code on Scrimba](https://scrimba.com/c/cgMZwDuy)

