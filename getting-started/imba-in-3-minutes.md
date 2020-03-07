---
description: A tutorial on Imba for the busy and experienced programmers.
---

# Imba In 3 Minutes

In Imba `tag`'s provide you with super powers. They compile down to native web components and allow you to directly manipulate DOM attributes.

### Tags

Let's look at a tag:

```ruby
tag hello-world
        <self>
                <h1> "Hello World"
```

As you probably noticed by now, Imba is a indentation based language. In the tag the `<self>` level defines the contents of the tag.

### Methods

If you want to perform some work before rendering to the screen you could do it in the render method or one of the other lifecycle methods. Building on the previous example

```ruby
tag hello-world

        def greet
                const name = self.name
                "Hello {name ? name : 'World'}"

        def mount
                const u = "https://jsonplaceholder.typicode.com/users/3"
                const request = await window.fetch(u)
                self.payload = await request.json()

        def render
                <self>
                        <h1> greet(@data.name)
```

Stepping through that example we have three methods `greet`, `mount` and `render`. The two later ones are part of the lifecycle in Imba while greet is just a custom method. What happens here is that we are performing a remote request for a JSON resource. This happens before mounting the tag and when the render is called we should show a name or default to 'World'.

### Attributes

Accessing attributes is very easy in Imba since tags can be treated exactly as DOM elements. Building on the example above we could make the remote url overridable, f. ex:

```ruby
def mount
    		const u = self.getAttribute('url')
        if u
            const request = await window.fetch(u)
            self.payload = await request.json()
        else
            console.log('no url')
```

In your markup you would then set it like this

```markup
<hello-world url='https://jsonplaceholder.typicode.com/users/3'></hello-world>
```

