---
description: updated on 27_April_2020 - by Eric
---

# Functions

There are two types of functions in Imba; methods and blocks.  
In JavaScript, they're known respectively as _Function Declarations_, and _Function Expressions._

{% hint style="info" %}
Imba automatically returns the last expression of the function.
{% endhint %}

## Function Declarations \(Methods\)

Functions can have three different scopes.

* global
* class instance
* tag instance

By defining a function outside of classes or tags, they will be accessible in globally.

```ruby
def randomize
	Math.random()
```

## Functions within Classes \(Methods\)

Functions are called **Methods** when used within classes. You probably know that already. When an object inherits from a class that contains methods, those methods will be accessible from that object. ****[**Learn more about class methods here.**](classes-1.md)\*\*\*\*

```ruby
class Random
	def randomize
		Math.random!
let lucky = Random.new
console.log lucky.randomize!
```

[🔗 Play with this code on Scrimba](https://scrimba.com/c/cWn2Wqtb)

## Functions within Tags

Functions are fun when paired with DOM events. In Imba you can create methods that are scoped to your components. You do so right within your tag component.

```ruby
tag app-root
	prop isClicked = true
	def toggle
		isClicked = !isClicked
	<self>
		<button.isClicked=isClicked :click.toggle> 
			if isClicked
				"edit"
			else
				"done"  
```

[🔗 Play with this code on Scrimba](https://scrimba.com/c/ce9GanuP)

## Single Argument Functions

```ruby
def square num
	num * num
console.log square(2)
```

[🔗 Play with this code on Scrimba](https://scrimba.com/c/cE9g29s3)

## Optional Argument Functions

```ruby
def call url, method = 'GET'
	console.log(method, url)
	// do some work here
```

[🔗 Play with this code on Scrimba](https://scrimba.com/c/caZGv4cP)

## Varying Number of Arguments

If you don't know how many arguments are going to be passed in or are trying to be flexible there is a syntax for that

```ruby
let array = ["Javascript", "React", "Vue"]
def race winner, ...rest
	"{winner} beats {rest.join(", ")}"
console.log race("Imba", array)
```

[🔗 Play with this code on Scrimba](https://scrimba.com/c/cRD2gKsQ)

## Accessing Arguments via Shorthand

The arguments of a method can be accessed through the special `$0`. Each individual argument can be accessed through `$n`, where n is the argument number, starting from 

```ruby
def method
	$0 # -> arguments
	$1 # -> arguments[0]
	$2 # -> arguments[1]

# sometimes practical for inline methods
var doubles = [1,2,3].map do $1 * 2
```

## Function Blocks \(Expressions\)

```ruby
var square = do(v) v * v
```

Function blocks are known as anonymous function expressions in JavaScript. They can be assigned and passed around. They have their own lexical scope / closure, but no dynamic scope. This means that self \(implicit _and_ explicit\) inside the block still refers to the self of the outer scope.

Blocks can be passed in directly when calling functions, as the last argument.

```ruby
[1,2,3,4].map do(num) num * 2

item.save do
    # callback trigger when item is saved?
    console.log 'item was saved'
```

> 🔗 [Play with this code on Scrimba](https://scrimba.com/c/cgMZwDuy)

## Arrow Functions \(Blocks\)

Arrow functions are nothing more than new syntax for function blocks. Function blocks are so concise in Imba, that arrow functions are not really necessary.

`(element) =>` equals `do(element)`

Here are a few examples of arrow functions converted to Imba syntax.

> Example below from[ jsonplaceholder.typicode.com](https://jsonplaceholder.typicode.com/)

{% tabs %}
{% tab title="JavaScript" %}
```javascript
fetch('https://jsonplaceholder.typicode.com/todos/1')
  .then(response => response.json())
  .then(json => console.log(json))
```
{% endtab %}

{% tab title="Imba" %}
```
fetch('https://jsonplaceholder.typicode.com/todos/1')
  .then do(response) response.json!
  .then do(json) console.log(json)
```
{% endtab %}
{% endtabs %}

[🔗 Play with this code on Scrimba](https://scrimba.com/c/cdVGqLc8)

> Example below from [developer.mozzilla.org](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions) \(explanations on their website\)

{% tabs %}
{% tab title="Javascript" %}
```javascript
var elements = [
  'Hydrogen',
  'Helium',
  'Lithium',
  'Beryllium'
];

elements.map(function(element) {
  return element.length;
});

elements.map((element) => {
  return element.length;
});

elements.map(element => {
  return element.length;
});

elements.map(element => element.length);

elements.map(({ length: lengthFooBArX }) => lengthFooBArX);

elements.map(({ length }) => length);
```
{% endtab %}

{% tab title="Imba" %}
```ruby
var elements = [
	'Hydrogen'
	'Helium'
	'Lithium'
	'Beryllium'
]

console.log elements.map do(element)
	element.length;
	
console.log elements.map do(element)
	element.length;
	
console.log elements.map do(element)
	element.length;
	
console.log elements.map do(element) element.length;

console.log elements.map do({length: lengthFooBarX}) lengthFooBarX

console.log elements.map do({length}) length
```
{% endtab %}
{% endtabs %}

[🔗 Play with this code on Scrimba](https://scrimba.com/c/cdVGqLc8)

