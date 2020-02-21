---
description: 'Basic Operators: https://scrimba.com/c/cPJQ88Hk'
---

# Boolean Operators

## If Statements

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

## Else Statements

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

## Else If Statements

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

## And/Or Operators

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

## Ternary Operator

#### Single Line Ternary Operator

You can do them the Javascript way like this:

`if (condition) ? function : function`

But this is the fun Imba way:

`if (condition) then function else function`  

Here's a real example:

```ruby
# height in centimeters
var height = 100
if height >= 80 then console.log('You can ride the rollercoaster!') else console.log('Sorry, you are a few centimeters short.')
# --> Congratulations, you can ride the rollercoaster
```

#### Multiline Ternary Operator

The multiline ternary operator can make things even more legible.

```ruby
# Multiline ternary operator
if height >= 80
then console.log(firstName + ' can ride a rollercoaster')
else console.log(firstName + ' cannot ride a rollercoaster')
```

## Equality Operators

In imba you have the option of using they keywords `is` and `isnt` instead of `===` and `!==` for the strict equals and strict not-equal operators.

```ruby
let total = 1

if total is 1
# returns: true

if total isnt 1
# $: false
```

## Boolean Values

While Imba always renders `true` and `false`  boolean values, you may use the keywords `yes` and `no` on your code if it makes your code more legible.

```ruby
var loggedIn = yes
# or 
var loggedIn = no
```

## The Not Operator

As you would in javascript, you can negate a boolean value with the exclamation mark `!` 

```ruby
def toggleItem item
    item.done = !item.done
```

> [Play with code on Scrimba](https://scrimba.com/c/c672KET3)

