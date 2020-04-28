---
description: updated on 27 April 2020 (Eric Tirado)
---

# Classes

{% hint style="danger" %}
V2 possible change under Class Instance:   
let Eric = Person.new  
let Eric = new Person  
  
Extending Class Constructors not supported?
{% endhint %}

##  Why use Classes?

{% hint style="info" %}
What in JavaScript is referred to as a _Constructor Function_ or _Prototype_, _Imba_ calls a _**Class**_, as it is commonly known in other programming languages.
{% endhint %}

In summary, a _**Class**_ allows you to store a prototype under a constructor name. And then you can pass that prototype unto an object or even another class.

A prototype is a collection of properties and methods.

All objects in Javascript inherit from the Object prototype. That means that all objects have access to the native properties and methods of the [Object prototype](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object).

For example, we can use the `.length` property on any object without ever defining it, because the Object prototype already contains that property by default, and it is inherited by all objects. Here I create a `name` object with a string value of "Eric", and I can use Object's native property `length` to see the length of the string.

```ruby
let name = "Eric"
console.log name.length
>>> 4
```

[🔗 Play with this code on Scrimba](https://scrimba.com/c/c73BPRhW)

At the end of this page, I explain the Prototype Chain in more detail, but this summary should be enough for now.

Classes allow you to create your own prototypes of _props_ and _methods_ to be inherited by the objects of your choice.

#### Custom Objects

To understand the use of classes, let's look back at objects really quick.  
This is an object that contains custom properties for John.

```ruby
var eric =
    age: 20
    birthYear: 2000
    job: "programmer"
```

If we want to create a new object we could duplicate the properties and change the values.

```ruby
var john =
    age: 30
    birthYear: 1990
    job: "designer"
```

We could keep doing this over and over, but that's what _classes_ are for. A _**Class**_ allows us to create a custom prototype \(props and methods\) that any instance of that class will inherit.  
By making `eric` and `john` instances of the same _**Class,**_ they would share the same properties and methods.

You can think of classes as some sort of blueprint for creating objects that will help you keep your code DRY and easier to maintain as you only need make changes to the Class to affect all its instances. 

Ok. Let's Begin.

## Declare a Class

```ruby
class Person
```

A Class is simply declared with the keyword of `class` followed by the desired name for that class. Though a naming convention is not enforced, the best practice is to use `UpperCase` naming convention for classes.

> `camelCase` is conventionally for functions and methods.

## Class Instance

```ruby
let Eric = Person.new
```

{% hint style="info" %}
This syntax is not solely for classes created in Imba, but is used for creating any object, be it built in constructors in JavaScript like `Array`, `Object`, `RegEx` and any other class/constructor from other languages.
{% endhint %}

**To create instances of classes in Imba you use the `new` method like `Array.new`, as opposed to the `new Array()` syntax in JavaScript.**

Let's create an instance of the `Person` class in the Eric variable.

```ruby
class Person
let Eric = Person.new
```

The `Person` class, inherits a `constructor()` method from the `Object` prototype. Since `Eric` is now an instance of `Person,` it also inherits the `Object` object. This is called a _Prototype Chain_, but I don't want to bore you with too many details. 

> \(See the _**Prototype Chain**_ section at the end of this page for more details\)

All I'm trying to say is, that we should have the `constructor()` method available on the `Eric` object, since we inherited it from the `Person` class, which inherited it from the `Object` object.

Let's see if the `Person` class has been instantiated in the `Eric` object, by looking for the constructor name on Eric. It should print "Person" if all is well.

```ruby
class Person
let Eric = Person.new

console.log Eric.constructor.name
>>> Person
```

🔗 [play with code on Scrimba](https://scrimba.com/c/cn4wJrtv)

## Instance Variable / Prop

Instance Variables in Imba are declared using the **prop** keyword. **Props** a variables that are scoped to the specific instance of a class or tag. They are not directly accessible from the global scope. Let's store our constructor name in a prop called type and print the result to the console.

```ruby
class Person
    prop type = this.constructor.name
let Eric = Person.new
```

By accessing the 'type' property on 'Eric', we should see "Person" in the console as we did before.

```ruby
class Person
    prop type = this.constructor.name
let Eric = Person.new

console.log Eric.type
>>> Person
```

🔗 [Play with the code on Scrimba](https://scrimba.com/c/cvdJpKSd)

## Instance Methods / Functions of a Class

What _props_ are to _variables_, what _methods_ are to _functions_. _Methods_ are functions that are scoped to the specific instance of a _class_. Just as _props_, they cannot be accessed directly from the global scope, only through the class instances themselves. It'll make sense as we go along.

Let's create a method using the `def` keyword called `printType` and let's have it print the value of type to the console.

```ruby
class Person
    prop type = this.constructor.name
    def printType
        console.log type
```

Now we should be able to print the type to the console by simply accessing the method through the Eric instance.

```ruby
class Person
    prop type = this.constructor.name
    def printType
        console.log type
let Eric = Person.new
Eric.printType()
>>> Person
```

Methods, just like functions, are called using the `functionName()` syntax.   
If you don't have any parameters to pass, you can use an exclamation mark `!` instead of the parenthesis `()` . We think it looks prettier.

```ruby
Eric.printType!
>>> Person
```

[🔗 Play with this code on Scrimba](https://scrimba.com/c/cVng4wAZ)

## Constructor / Initializer

This is the bread and butter of classes. When you have multiple objects that will use the same props and methods, you don't want to manually create those properties. Let's use these two objects as an example:

```ruby
let Eric =
    name: "Eric"
    age: "20"
    job: "programmer"
let Joe =
    name: "Joe"
    age: "30"
    job: "Designer"
```

If you later want to add a new property to them, you would need to do it on each one of them one by one. By making the _Eric_ and _Joe_ instances of the same _**Person**_ class, by adding the properties to the _Class_, Eric & _Joe_ will inherit those by default. 

Remember that _**Classes**_ are also called _Prototypes_? Eric and Joe inherit the _**Person**_ prototype and everything above in _Prototype Chain._

Let's use the constructor method to create the same objects as above.

```ruby
class Person
    prop name
    prop age
    prop job
    def constructor n, a, j
        name = n
        age = a
        job = j
let Eric = Person.new "Eric", "30", "Programmer"
let Joe = Person.new "Joe", "27", "Designer"
```

> Remember that in Imba, self is implicit. So you don't have to specify `this.name`  as you would in Javascript.

As you can see. The values after Person.new `"...","...","..."` are passed to our props dynamically. We can then access those values as props of our Eric & Joe Objects.

```ruby
Eric.name
>>> "Eric"
Joe.name
>>> "Joe"
```

{% hint style="info" %}
Props used inside the constructor will be defined if they are not previously defined. This saves us a few lines of code. See below.
{% endhint %}

```ruby
class Person
    def constructor x, y, z
        name = x
        age = y
        job = z
let Eric = Person.new "Eric", "30", "Programmer"
let Joe = Person.new "Joe", "27", "Designer"
```

I used the letters `x, y, z` as the constructor arguments to make it easier to understand what is going on, but you you can use the same name for both your instance props and constructor arguments if you'd like.

```ruby
class Person
    def constructor name, age, job
        name = name
        age = age
        job = job
let Eric = Person.new "Eric", "30", "Programmer"
let Joe = Person.new "Joe", "27", "Designer"

console.log Eric.name
>>> Eric
console.log Joe.name
>>> Joe
```

[🔗 Play with this code on Scrimba](https://scrimba.com/c/cn4bdeud)

#### Methods are Functions

Don't forget that Methods, are functions of a Class. So anything you can do in a function, you can do in a method.

```ruby
class Person
	def constructor name, age, job
		name = name
		age = age
		job = job
	def birthYear
		date = Date.new
		date.getFullYear! - age
let Eric = Person.new "eric", 30, "teacher"
console.log Eric.birthYear!
```

```bash
>>> 1990
```

[🔗 Play with this code in Scrimba](https://scrimba.com/c/ckRVwkfM)

## Extending Class Constructors

{% hint style="danger" %}
NOT CURRENTLY SUPPORTED, OR NOT CORRECT SYNTAX
{% endhint %}

An important feature of _Classes_ is the ability to inherit from other classes.

For example, an Athlete is also a person, so it makes sense to inherit the properties of a person so that if we ever update the person class, the Athlete's class will also be updated. It will also help us keep our code light.

```ruby
class Person 
    def constructor name, age
        name = name
        age = age
class Athlete
    def constructor name, age, trophies
        name = name
        age = age
        trophies = trophies
```

let's DRY our code by inheriting the `name` and `age` props from `Person`.

We do so by defining our class `def Athlete` then using a `<` symbol followed by the class we want to inherit our prototype from `Person`.

```text
class Athlete < Person
```

This has saved us 2/10 lines of code. Imagine how many lines of code you can save on a large project.

```ruby
class Person
    def constructor name, age
        name = name
        age = age
class Athlete < Person
    def constructor trophies
        trophies = trophies
```

## Extending a Class with Methods

When inheriting from another class, all of their props \(instance variables\) are accessible to you in the new class. So you can use those prop values on the methods of your new class.

Let's grab the name prop on our greet method. 

```ruby
class Person
    def constructor name, age
        name = name
        age = age
class King < Person
    def greet
        console.log "Your Royal Highness, King {name}."

let john = King.new 'John', 20
john.greet!
```

console should print the following.

```ruby
>>> "Your Royal Highness, King John"
```

[🔗 Play with this code in Scrimba](https://scrimba.com/c/cQZrR2TD)

## Super

The **super** keyword is used to access and call methods of parent class in the _prototype chain_.

In the example below. `super` passes a value to the parameter `words` of the `writes` method on the parent prototype `Person`.

```ruby
class Person
	def constructor name
		name = name
	def writes words
		console.log "{name} writes an average of {words} words a day."

class Designer < Person
	def writes
		console.log "Designer writes..."
		super 2000

class Programmer < Person
	def writes
		console.log "Programmer writes..."
		super 10000

var John = Designer.new "John"
var Eric = Programmer.new "Eric"

John.writes!
Eric.writes!

# >>> Undefined writes an average of 2000 words a day
# >>> Undefined writes an average of 10000 a day
```

[🔗 Play with this code on scrimba](https://scrimba.com/c/ce9G9ntP)

## Prototype Inheritance

![Prototype Chain](../.gitbook/assets/prototype-chain%20%285%29.png)

The _Eric_ object is an instance of the _Person_ Object, and the _Person_ object is an instance of the _Object_ of object. So the Eric object inherits the methods of the _Person_ object which inherites from the _Object_ object.

So when you call a method, Imba will try to find a method in the exact object, if it cannot find it, it will look for method in parent object prototype, and so on, until there are no other object prototypes. In that case it will return `undefined`.

Null has no prototype, and it is the final link in the prototype chain, and undefined is returned.

### Summary

* Every object has a prototype property, which makes inheritance possible in JavaScript.
* The prototype property of an object is where we put methods and properties that we want other objects to inherit.
* The prototype property is NOT the prototype of the constructor itself, it's the prototype of ALL instances that are re created through it.
* When a certain method or property is called, the search starts in the object itself, and if it cannot be found, it will continue searching up prototype chain, until the method is found, or it will return **`undefined.`**

