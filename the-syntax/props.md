---
description: aka properties
---

# Props

{% hint style="info" %}
Simplify This
{% endhint %}

Components are better when they can share data with other components, such as their parent components. Imba makes this easy via properties, or props for short, which are fundamentally ready-to-go variables of an object. Let’s go to the next page to see it in practice.

## tag props

```ruby
tag app-root
    @page
```

### Dynamic prop data

```ruby
for item in names
    <h3 name=item>
```

### parent props

```ruby
tag name-counter
    def render
        <self>
```

## Declaring a Prop

To create a prop, we use the keyword `prop` followed by the `propName`: Makesure it’s indented inside your tag declaration, and you can then call the prop value anywhere in your component.

```ruby
export tag Likes
    prop likeCounter #new
    def render
        <self>
            <p> "Likes:"
                <b> likeCounter #new
```

Now let’s instantiate the component and pass a value to the prop.

```ruby
import Likes from './components/Likes.imba'

let counter = 0
tag App
    def increase
        counter++
    def render
        <self>
            <button :click.increase> "👍"
            <Likes likeCounter=0> #new

Imba.mount <App>
```

## Dynamic Prop Values

We can also use dynamic data to pass a value down to our prop:

```ruby
let counter = 0
tag App
    def increase
        counter++
    def render
        <self>
            <button :click.increase> "👍"
            <Likes likeCounter=counter> #modified

Imba.mount <App>
```

Go ahead and hit the like button, and watch the nested component receive likes.

## Default Prop Values

We can easily specify default values for props:

```ruby
export tag Likes
    prop likeCounter default: "😪" #modified
    def render
        <self>
            <p> "Likes: "
                <b> likeCounter
```

Now when we instantiate the tag without the prop, it has a default value to fall back on:

```ruby
let counter = 0
tag App
    def increase
        counter++
    def render
        <self>
            <button :click.increase> "+1"
        <Likes likeCounter=1>
        <Likes>
```

## Getters & Setters

To create a prop, Imba creates a getter & setter methods, to get and set information in the instance variable.

But you don't have to specify the getter & setter if you don't want to:

```ruby
tag Home
    prop welcome
```

But in case you do, you can be specific by defining two functions instead:

```ruby
def property
    @property=value
def method
    @property
```

This means that you can get and set values to the prop by using the `@name` format. And to differentiate from other variables, it is good practice to do so.

So from now on, we will reference props with the @ symbol from within tags:

```ruby
tag Home
    prop loggedIn
    <p> "You are: " + @loggedIn
```

> NOTE: Props are only found in tags, not in classes. So the @ symbol has a different meaning within classes, but we'll explain more on that when we get there.

## Questions

What are these called? prop, function, objects?

```ruby
# Explain This
def setup
        @items = [
            {title: "Remember milk", done: false}
            {title: "Test custom events", done: false}
        ]
# as seen here: http://imba.io/guides/essentials/event-handling#event-interface
```

Other Advanced Getter & Setter Info:

\[[https://app.gitbook.com/@tirado/s/imba/properties-and-methods](https://app.gitbook.com/@tirado/s/imba/properties-and-methods)\]

