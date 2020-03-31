---
description: The basics of Imba
---

# Logic

Imba is an indentation based language. If you have written any [Ruby](https://www.ruby-lang.org) or [Python](https://www.python.org/) then a lot of the syntax will feel familiar. Even though the syntax and semantics of Imba is much more related to Ruby than JavaScript, it does compile down to plain JavaScript, and is fully compatible with any existing JavaScript libraries. Imba does not extend any native types from JavaScript. Arrays are arrays, strings are strings, numbers are numbers, classes are constructors with prototypes and so forth.

### Interoperability

All the fundamental types are the same as in JavaScript, so for documentation about available methods see MDN [Object](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object), [Function](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function), [String](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String), [Number](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number), [RegExp](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp), [Array](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array), [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date), [Math](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math).

#### Strings

```ruby
var single = 'single quotes'
var double = "double quotes"
var interpolation = "string has {double}"
```

#### Numbers

```ruby
var integer = 42
var float = 42.10
```

#### Objects

```ruby
var object = {name: 'Imba', type: 'Language'}
```

If you can't stand the curly braces then indentation will also work

```ruby
var object =
	name: 'Imba'
	type: 'Language'
```

#### Arrays

```ruby
var array = [1,2,3,4,5]
```

#### Regular Expression

```ruby
var regex = /number is (\d+)/
```

#### Loops

```ruby
for num in [1,2,3]
    num

for own key, value of object
    value
```

#### Functions

```ruby
def hello name="world"
	return "Hello {name}"

console.log hello!
console.log hello('you')
```

#### Classes

```ruby
class Dog

    def constructor name
        name = name
    
    def bark
        "woof woof"
```

#### Operators

```ruby
var item
item = 100 # set value of item
item ||= 100 # set if value is falsy
item &&= 100 # set if value is already truthy
item ?= 100 # set if value is null or undefined

# comparators
item == 10 # check
item === 10 # strictly equal
item != 10 # not equal
item !== item # strictly not equal
item > 10 # greater than
item < 10 # less than
item >= 10 # greater than or equal
item <= 10 # less than or equal
```

#### Bitwise Operations

```ruby
a & b   # Bitwise AND
a | b   # Bitwise OR
a ^ b   # Bitwise XOR
~ a     # Bitwise NOT
a << b  # Left shift
a >> b  # Sign-propagating right shift
a >>> b    # Zero-fill right shift
```



