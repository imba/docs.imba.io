# Classes 🔵

{% hint style="info" %}
Simplify this
{% endhint %}

## Intro

What in JavaScript is referred to as a Constructor __or prototype, Imba calls a Class, as it is better known in other programming languages. 

To understand the use of classes, let's look back at objects really quick.  
This is an object that contains properties for John.

```ruby
var john = {
    age: 20
    birthYear: 1999
    isMarried: false
}
```

If we want to create a new object we could duplicate the code and change the values.

```ruby
var peter = {
    age: 30
    birthYear: 1989
    isMarried: false
}
```

We could keep doing this over and over, but there is a better way... _Classes!_   
You can think of classes as some sort of blueprint for creating objects that will help you keep your code DRY and easier to maintain as you only need make changes to the Class to affect all its instances.

## Declaration of Classes

A Class is simply declared with the keyword of `class` followed by the desired name for that class. The naming convention Imba is `UpperCasing`  as it does with tags,  since camelCasing is reserved for functions and methods.

We have been making objects like this,

```ruby
var john = {
    name: 'John'
    age: '20'
    job: 'teacher'
}
```

But, now let's make a Class to serve as a blueprint from which we will instantiate a new John Object in a more efficient way.

```ruby
class Person
	def initialize x,y,z
		@name = x
		@age = y
		@job = z
		
```

{% hint style="danger" %}
Explain Initialize x,y,z vs prop.
{% endhint %}

## Instances



To create instances of classes in Imba you use the `new` method like `Array.new`, as opposed to the special `new Array()` syntax in JavaScript. 

{% hint style="warning" %}
This syntax is not solely for classes created in Imba, but is used for creating any object, be it built in constructors in JavaScript like `Array`, `Object`, `RegEx` and any other class/constructor from other languages.
{% endhint %}

```ruby
class Person
	def initialize x, y, z
		@name = x
		@age = y
		@job = z

let john = Person.new 'John', 20, 'Teacher'
```

Imba's philosophy is that everything within objects is exposed through methods, so if we want to expose the John Instance of the Person Class, our Person class will need a method to expose that.

```ruby
class Person
	def initialize x, y, z
		@name = x
		@age = y
		@job = z
	def showName # method for exposing name.
		@name
```

Now if we would like to expose the name we would do so by accessing the `showName` method of the `john` object. 

```ruby
console.log john.showName
```

Thought using methods is recommended, you could still access the instance variables directly.

```ruby
console.log john:_name
```

And don't forget that Methods, are functions of a class. So anything you can do in a function, you can do in a method. 

```ruby
class Person
	def initialize x, y, z
		@name = x
		@age = y
		@job = z
	def showName
		console.log @name
	def birthYear
		let d = Date.new
		console.log d.getFullYear() - @age
	def showJob
		console.log @job.toUpperCase
		

let john = Person.new 'John', 20, 'Teacher'

john.showName
john.birthYear
john.showJob
```

{% code title="ConsoleLog" %}
```bash
# CONSOLE
> John
> 1999
> TEACHER
```
{% endcode %}

## Instance variables

{% hint style="danger" %}
need to explain
{% endhint %}

## Properties



> **📌TODO** Explain advanced features of `prop` and `attr`. Also, there are changes in v2.

As mentioned earlier, Imba embraces the philosophy that classes should expose everything through methods. You can define properties on classes, which are automatically generated getters and setters. 

If you want to get/set the title of a `Todo` in JavaScript, it's not uncommon to just get/set it as a property directly. In Imba, you would want to instead define _methods_ to set and get the title.

```ruby
class Todo
	prop title
```

The above is basically a quick way to define both a getter and a setter for the instance variable title.

```ruby
class Todo

	def title
		@title

	def title= value
		@title = value
```

## Prototypal Inheritance

![The Prototype Chain](../.gitbook/assets/prototype-chain%20%281%29.png)

The _Eric_ object is an instance of the _Person_ Object, and the _Person_ object is an instance of the _Object_ of object. So the Eric object inherits the methods of the person Object, and from the person object's parent the _Object_ object. 

As in JavaScript, so Imba will try to find a method in the exact object, if it cannot find it, it will look for method in parent object prototype, and so on, until there are no other object prototypes, in which case it will return null. 

Null has no prototype, and it is the final link in the prototype chain, and undefined is returned.

#### Summary

* Every JS & Imba Object has a **prototype property**, which makes inheritance possible in JavaScript.
* The prototype property of an object is where we put methods and properties that we want **other objects to inherit**.
* The Constructor's prototype property is **NOT** the prototype of the Constructor itself, it's the prototype of **ALL** instances that re created through it.
* When a certain method \(or property\) is called, the search starts in the object itself, and if it cannot be found, the search moves on to the object's prototype and continues up **prototype chain, until the method is found.**

## Inheritance

An important feature of Classes is its ability to inherit from other classes.

For example, an Athlete is also a person, so it makes sense to inherit the properties of a person so that if we ever update the person class, the Athlete's class will also be updated. It will also help us keep our code light.

```ruby
class Person 
    def initialize name, age
        @name = name
        @age = age
        
class Athlete
    def initialize name, age, trophies
        @name = name
        @age = age
        @trophies = trophies
```

We can use inheritance via the `<` symbol as you would with tags.

```ruby
class Person
	def initialize name, age
		@name = name
		@age = age
class King < Person
	def greet
		console.log "Your Royal Highness, King {@name}."
let john = King.new 'John', 20

john.greet

#console
> "Your Royal Highness, King John"
```

## Super

> 📌 **TODO** Explain advanced use of super

Imba's inheritance relies on JavaScript prototypal inheritance, with some added conveniences.

```ruby
# Example borrowed from coffeescript.org
class Animal

	def initialize name
		@name = name

	def move meters
		console.log "{@name} moved {meters}m."

class Snake < Animal
	def move
		console.log "Slithering..."
		super 5

class Horse < Animal
	def move
		console.log "Galloping..."
		super 45

var sam = Snake.new "Sammy the Python"
var tom = Horse.new "Tommy the Palomino"

sam.move
tom.move
```

