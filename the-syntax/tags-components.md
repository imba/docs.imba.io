# Tags Components

## Creating a Component

Use the keyword `tag` followed by a component name using the web-component naming convention. it must contain at least two words separated by a dash. `-`

```ruby
tag my-app
    def render
        <self>
            <h1> "Hello World!"

imba.mount <my-app>
```

## Nested Components

You may have multiple tags in one document, and render them within the other tags in the document.

```ruby
tag my-app
    def render
        <self>
            <h3> "This is a header"
            <nested-component>
tag nested-component
    def render
        <self>
            <h3> "This is a nested component
```

You may also import a tag from a separate imba file.

{% tabs %}
{% tab title="my-app.imba" %}
```ruby
import `nested-component` from './components/Nested.imba'
tag my-app
    def render
        <self>
            <h3> "This is a header"
            <nested-component>
```
{% endtab %}

{% tab title="nest-component.imba" %}
```ruby
export tag nested-component
    def render
        <self>
            <h3> "This is a nested component
```
{% endtab %}
{% endtabs %}

```text
  title: "Ho
```

## Dynamic Attributes

Use attributes as you would in HTML. Just remember to omit the quotes for dynamic values. In the example, we are adding the image source dynamically from a variable.

```ruby
let image = "images/200.png"
tag my-app
    def render
        <self>
            <img src=image alt="placeholder">
```

## Dynamic Data

[Play with code on scrimba](https://scrimba.com/c/cRqydLsD)

Values from variables and objects can be injected right into the DOM elements. You may use native js object methods on these such as `.toUpperCase()` as well.

```ruby
let name = "World"
tag my-app
    def render
        <self>
            <h1> "Hello {name.toUpperCase()}!"
            # or
            <h1> "Hello" + name.toUpperCase() + "!"
```

### Tag Property Data

In the example below we render the app-pages component once for each object in the `pages` array variable. We then dynamically pass the corresponding object data to the component with `p=page.` We then dynamically access the title from the app-pages component by using the `@p.title` prop.

```ruby
let pages = [
    title: "Home"
    description: "This is the home page"
    ---
    title: "About"
    description: "This is the about page"
]
tag app-root
    def render
        <self>
            <h1> "Hello World"
            for page in pages
                <app-pages p=page >
tag app-pages
    def render
        <self>
            <h1> @p.title
```

## Parent Tag Property Data \(Context\)

[Play with this code on Scrimba](https://scrimba.com/c/cRqydLsD)

If we would like to use data from a prop assigned to a parent component we cannot access it with the same prop symbol `@`  
We could if we passed the prop value to the child through a new prop like this: `p=@p` , but we do not need to that.

In imba we can use `#context.title` to traverse up the component tree, and it will return the first matching property value on any parent element.

```ruby
let pages = [
    title: "Home"
    description: "This is the home page"
    ---
    title: "About"
    description: "This is the about page"
]
tag app-root
    def render
        <self>
            <h1> "Hello World"
            for page in pages
                <app-pages page=page desc=page.description>
tag app-pages
    def render
        <self>
            <h1> @page.title
            <app-content>
tag app-content
    def render
        <self>
            <p> #context.desc
```

## Context

scrimba cast

## Functional Tags

scrimba cast

useful for

```ruby
if bool
        functional-tag(@page.items[0])

def functional-tag item
    <div> <page-item item=item>
```

## Tag Properties

....

