# Elements \(HTML\)



### HTML Elements

Imba takes any html element. Just remember that because Imba is indentation-based, it does not require closing tags to denote nesting. Therefore, in Imba all closing tags are removed.

```markup
<p> This is a pragraph </p>
```

The above will look like this in Imba

```markup
<p> "this is a paragraph"
```

Notice that the text is wrapped in quotes. In Imba, data types are treated as it would in Javascript. So a string of text must be wrapped in double or single quotes. 

### HTML Properties

HTML properties work just as they would in vanilla HTML with the exception of classes and id's.

```markup
<p width="200"> "this is a paragraph"
```

### HTML Classes & ID's

In Imba, tag Classes and IDs are defined using the familiar CSS selector syntax for selecting Classes and IDs.

So instead of this

```markup
<h1 id="page-title" class="primary"> Hello World! </h1>
```

It would look like this.

```markup
<h1#page-title.primary> "Hello World!"
```

### Dynamic Classes

The element below will have a class of `active` which is dynamically injected from the state variable.

```markup
var state = "active"
<a .{state}> "home"
```

### Conditional Classes

If the state variable evaluates to false, the class will not be applied. SImilarly you can use methods, functions, and other imba logic to apply these classes.

```ruby
var state = true
<a .active=state>
```

