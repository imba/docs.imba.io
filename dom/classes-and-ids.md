# Classes & IDs

In Imba, tag Classes and IDs are defined using the familiar CSS selector syntax for selecting Classes and IDs.

So instead of this

```markup
<h1 id="page-title" class="primary"> Hello World! </h1>
```

It would look like this.

```markup
<h1#page-title.primary> "Hello World!"
```

## Dynamic Classes

The element below will have a class of `active` which is dynamically injected from the state variable.

```markup
var state = "active"
<a .{state}> "home"
```

## Conditional Classes

If the state variable evaluates to false, the class will not be applied. SImilarly you can use methods, functions, and other imba logic to apply these classes.

```ruby
var state = true
<a .active=state>
```

