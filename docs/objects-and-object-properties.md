# Objects

## Object Literal Syntax

```ruby
var eric = 
	firstName: "Eric"
	lastName: "Maximus"
	birthYear: 1980
	family: ['Jane', 'Mark', 'Bob', 'Emily']
	job: 'developer'
```

## Access Properties

```ruby
console.log(eric.firstName)
# or
console.log(eric['lastName'])
```

## Keys to Variables

```ruby
# store key name in variable
let x = 'birthYear'

# use variable instead of keyname
console.log(eric[x])
```

## Mutate Object Data

```ruby
let eric =
    isMarried: false
    job: 'developer'

# mutates object data
eric:isMarried = true
eric['job'] = 'designer'

# prints mutated object data
console.log(eric:isMarried)
console.log(eric:job)

> isMarried: true
> job: "designer"
```

## New Object

```ruby
# Create new Object
let jane = Object.new

# Declare new Properties and values to the jane object
jane.name = 'Jane'
jane.birthYear = '1993'
jane.lastName = 'Smith'

# Print jane Object
console.log(jane)

> {name: "Jane", birthYear: "1993", lastName: "Smith"}
```

Arrays are used a lot, but if you want to access an element in an array not by an index number, but by a name. For that we use objects, each objects has a key value pair, meaning each value has a name called a 'key'. In simple terms we can group separate variables that belong together, and that have no particular order. Like properties of `eric`. 

In arrays, order matters, but in objects, order doesn't matter much at all, as keys will be accessed by their names and not their index value.

## Object Methods

An object can hold different types of data, arrays, and other objects.  
But **we** **can also attach functions to objects**. These functions are called methods.

In the array lesson we learned the methods for arrays like push & pop. Those are native methods of the array object. On our custom objects, we create can create our own methods.

```ruby
let thisYear = 2020

let eric = 
	firstName: "Eric"
	# calculate age with a function
	calculateAge: do
		2020 - 1990
```

We access methods with dot notation and \(\) at the end.

```ruby
console.log eric.calculateAge()
> 30
```

We want to **set an age property**, but we don't want it to be hard coded, because it changes every year.   
Let's create a method that will run a function to calculate that dynamically.

```ruby
let thisYear = 2020

let eric = 
	firstName: "Eric"
	birthYear: 1990
	# calculate age with a function
	calculateAge: do
		eric.age = thisYear - eric.birthYear

console.log eric.calculateAge()

> 30
```

## Object Method with Arguments

We can also pass an argument when we call the method. For that **we need to use a function block with an argument key** within the method. It's a function without a name with just an argument which we then assign to the variable.

in this case, calcAge.

```ruby
let thisYear = 2020
let eric = 
	firstName: "Eric"
	# function block with argument
	calculateAge: do |birthYear|
		thisYear - birthYear

console.log eric.calculateAge(1990)

> 30
```

## Access of own property of Object

Let's allow the object method to access it's own property.  
You can use `this` to access a property in the same object.

```ruby
let eric =
		firstName: "Eric"
		birthYear: 1990
		calculateAge: do
				# access own property of eric object
				2020 - this.birthYear
```

## Setting Properties Within Methods

We can also set a property from within any method we have access to.

```ruby
let eric =
		firstName: "Eric"
		birthYear: 1990
		calculateAge: do
				# set age property
				eric.age = 2018 - eric.birthYear
```

We can set new properties from the result of any method.

```ruby
let age = eric.calculateAge()
eric.age = age # sets a new age property in the eric object.
```

We can set a new property from the result of a method in a single line

```ruby
eric.age = eric.calculateAge()
```

## Array of Objects Special Syntax

```ruby
let array = [
	name: "eric"
	hobbies: [
		"coding"
		"music"
		]
	---
	name: "joe"
	hobbies: [
		"sports"
		"reading"
		]
	---
	name: "sally"
	hobbies: [
		"photography"
		"running"
		]
]
tag app-root
	def render
		<self>
			for object in array
				<h3> object.name
				<ul> for item in object.hobbies
					<li> item
```

> [Play with this code on Scrimba](https://scrimba.com/c/cZPNNeHv)

