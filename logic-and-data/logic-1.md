---
description: 'Basic Operators: https://scrimba.com/c/cPJQ88Hk'
---

# Conditional Statements & Operators

## Conditional statements

### If Statements

To conditionally render some elements nest them within if statements.

```ruby
tag App
    prop loggedIn default: false
    def toggle
        @loggedIn=!loggedIn
    def render
        <self>
            # if statements
            if loggedIn 
                <span> "you are logged in"
            if !@loggedIN
                <button> "you are logged out"
```

### Else Statements

If we have two conditions that are mutually exclusive, we can simply use `else` as part of our logic.

```ruby
tag App
    prop loggedIn default: false
    def toggle
        @loggedIn=!loggedIn
    def render
        <self>
            if @loggedIn 
                <span> "you are logged in"
            else
                <span> "you are logged out"
```

### Else If Statements

Instead of nesting if and else statements, you can use the `else if` to chain conditions. With Imba you may use `elif` for short.

```ruby
tag App
    prop progress default: 0
    def render
        <self>
            <input[@progress] type='range' min=0 max=100 step=1> 
            <p> "{@progress}% "
                if @progress < 1
                    <span> "start" 
                elif @progress > 0 and @progress < 100
                    <span> "loading "
                else
                    <span> "done "
```

### And/Or Operators

```ruby
# and operator works the same as && in javascript
if yes and yes
    console.log "only way it will run"

# Or operator works the same as || in javascript
if no or no
    console.log "Only way it will not run"

# Not operator
console.log !fasle # returns true
```

### Switch Operator

```ruby
Switch Statements
let emotion = 'happy'
switch emotion
    when 'happy'
        console.log '😀'
    when 'sad'
        console.log '😢'
    else
        console.log '🤷‍♂️'
```

> [Play with this code on Scrimba](https://scrimba.com/c/cQqQeWuD)

## Boolean Values

While Imba always renders `true` and `false` boolean values, you may use the keywords `yes` and `no` on your code if it makes your code more legible.

```ruby
var loggedIn = yes
# or 
var loggedIn = no
```

## 

## Operators

### Boolean Operators

Imba brings carries over all the boolean operators from Javascript, with a few wrappers for strict-equal `is` and strict-not-equal `isnt` operators

```coffeescript
# comparators
item == 10 # check
item === 10 # strictly equal
item is 10 # also strictly equal
item != 10 # not equal
item !== 10 # strictly not equal
item isnt 10 # also strictly not equal
item > 10 # greater than
item < 10 # less than
item >= 10 # greater than or equal
item <= 10 # less than or equal
```

### Switch Operator

```ruby
Switch Statements
let emotion = 'happy'
switch emotion
    when 'happy'
        console.log '😀'
    when 'sad'
        console.log '😢'
    else
        console.log '🤷‍♂️'
```

> [Play with this code on Scrimba](https://scrimba.com/c/cQqQeWuD)

### Ternary Operator

#### Single Line Ternary Operator

You can do them the Javascript way like this:

```javascript
if (condition) ? function : function
```

But this is the fun Imba way:

```ruby
if (condition) then function else function
```

Here's a real example:

```ruby
# height in centimeters
var height = 100
if height >= 80 then console.log('You can ride the rollercoaster!') else console.log('Sorry, you are a few centimeters short.')
# --> Congratulations, you can ride the rollercoaster
```

#### Multi-line Ternary Operator

The mult-iline ternary operator can make things even more legible.

```ruby
# Multiline ternary operator
if height >= 80
then console.log(firstName + ' can ride a rollercoaster')
else console.log(firstName + ' cannot ride a rollercoaster')
```

### 

```ruby

```

### The Not Operator

As you would in Javascript, you can negate any boolean value with the exclamation mark `!`

```ruby
def toggleItem item
    item.done = !item.done
```

> [Play with code on Scrimba](https://scrimba.com/c/c672KET3)

