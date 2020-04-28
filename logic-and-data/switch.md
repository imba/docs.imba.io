---
title: Switch
order: 9
description: Examples of switch statements.
---

# Switch

You can use switch statements in two ways in Imba:

```ruby
var number = 1
var numberString = switch number
  when 0
    "zero"
  when 1
    "one"
  else
    "not 1 nor 0"

# compact 
var numberString2 = switch number
  when 0 then "zero"
  when 1 then "one"
  else "not 1 nor 0"

# you can also mix them
var numberString3 = switch number
  when 0 then "zero"
  when 1
    "one"
  else "not 1 nor 0"
```

As you see, `else` stands for `default`. Isn't it clearer?

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

