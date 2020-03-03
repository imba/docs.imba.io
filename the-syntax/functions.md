# Functions

There are two types of functions in Imba; methods and blocks.  
In JavaScript, they're known respectively as _Function Declarations_, and _Function Expressions_

## Function Methods \(Declarations\)

```ruby
def randomize
    Math.random()
console.log randomize
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

