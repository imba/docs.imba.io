# DOM Manipulation & Events 🟡

{% hint style="info" %}
Simplify this
{% endhint %}

## Dom Events

Javascript can recognize several events. They can be accessed by their attribute name which begins with `on`. Here’s a list of them.

```ruby
onchange
onclick
onmouseover
ononmouseout
onkeydown
onload #not needed since imba loads on every event.
```

Imba has an extra one that is touch device friendly

```ruby
ontap
```

These events can be used component wide by being setting the handlers at the root level within the tag.

```ruby
tag App
	prop lights default: yes
	def ontap e
		@lights = !lights
	def render
		<self .lightsoff=!@lights>
			if @lights
				<h1> "LIGHTS ON"
			else
				<h1> "LIGHTS OFF"
```

You can pass the event value to a property

```ruby
var state = {
	x: 0, 
	y: 0,
	}
tag App
	def onmousemove e
		state:x = e.x
		state:y = e.y
	def render
		<self>
			<h3> "Your mouse position is {state:x} x {state:y}"
```

## Handler Methods

It’s better practice to decouple the handler from the view and the event itself. Let’s define a method with the event, and call it from where we need it. There are a few ways to do this, but Imba has a special syntax for this `:click.eventHandlerName`:

We need a method that does our increments: and we have a couple of ways to reference it.

```ruby
tag App
	prop counter
	def increment
		counter++
	def render
		<self>
			<button :click.increment> "+1"
			<button :click="increment"> "plus one"
```

Now we have a couple of event handlers that are outside the view, and we can reference them from within the view:

```ruby
tag App
	prop counter
	def increment
		counter++
	def step amount
		counter += amount
	def render
		<self>
			<button :click.increment> "+1"
			<button :click="increment"> "plus one"
			<button :click=['step',2]> "+2"
			<button :click.step(3)> "+3"
			<p> "total: {counter}"
```

## Inline Handlers



We can use  to listen to DOM events and run code when they’re triggered.

Let’s make an inline event handler. We are going to need to store our state in a variable with a default value of 0:

```ruby
let counter = 0
tag App
	def render
		<self>
			<button> "click"
Imba.mount <App>
```

When we click on the button we want to run some JavaScript that adds +1 to the state.

```ruby
let counter = 0
tag App
	def render
		<self>
			<button :click=(do counter++)> "click"
Imba.mount <App>
```

Now we need to see the total value:

```ruby
let counter = 0
tag App
	prop counter
	def render
		<self>
			<button :click=(do counter++)> "click"
			<p> "total: " + counter
Imba.mount <App>
```

Then we assign an initial value and type for when the component is rendered. We’ll refer to our state from our component, and give it a default value:

```ruby
Imba.mount <App counter=0>
```

## Inline Handlers

We can also handle the events directly on elements by using inline declarations with `:` instead of using the `on` directive.

```ruby
:change
:click
:mouseover
:onmouseout
:keydown
:tap
```

Inline handlers can go right inline within the elements:

```ruby
tag App
	prop lights default: yes
	def render
		<self .lightsoff=!@lights :tap=(do @lights=!lights)>
			if @lights
				<h1> "LIGHTS ON"
			else
				<h1> "LIGHTS OFF"
```

## Event Modifiers



> 📌NEEDS TO BE EXPLAINED BY SOMEONE THAT UNDERSTANDS JARGON & THE DOM BETTER

DOM event handlers can have modifiers that alter their native behavior. For example `.stop` will stop event from propagating. The modifier is implemented after the event declaration but before the handler. Modifiers can also be chained together using periods.

```ruby
def onsubmit e
	e.prevent.someHandler
<form :submit.prevent.someHandler>
```



```ruby
tag CustomElement	
	def onclick event
		event.target # returns the Imba.Tag target for event
		event.native # returns the native DOMEvent
		event.type # returns the type of event, in this case 'click'
		event.prevent # calls preventDefault on the native event
		event.stop # calls stopPropagation on the native event

		# a bunch of methods accessing native event
		event.x # Event:x
		event.y # event.native:y
		event.button # event.native:button
		event.which # event.native:which
		event.alt # event.native:altKey
		event.shift # shiftKey
		event.ctrl # event.native:ctrlKey
		event.meta # event.native:metaKey
```

## Event Binding

How to bind events. One of the most useful features of modern web development. 

## State Variables

How to modify variables through events

