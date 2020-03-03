# Slots

## Ghost Slot

🎮 [scrimbacast](https://scrimba.com/c/cmdK3wU6)

Empty tags like `main-content` have a default ghost slot. Any content indented under the tag instance, will be rendered as a child of that component. In the example below we place an `<h1>` element within the `<main-content>` tag.

```ruby
tag app-root
    def render
        <self>
            <main-content>
                <h1> "Hello World"

tag main-content < main

### css
main-content {
    padding: 20px;
}
###
```

## Default Slot

scrimba cast

If you would like to control where the content will go, you can create a default slot within your tag. In this example. The `<p>` element will be rendered after the `<h1>` tag where the `<slot>` tag is.

```ruby
tag app-root
    def render
        <self>
            <main-content>
                <h1> "Hello World"
                <p> "Welcome to my Imba app!"

tag main-content < main
    def render
        <self>
            <slot>

### css
main-content {
    padding: 10px;
    display: block;
    border: 1px solid tomato;
    margin: 20px;
}
###
```

## Named Slot

🎮[ scrimbacast](https://scrimba.com/c/cWK3M3AP)

```ruby
tag app-root
    def render
        <self>
            <main-content>
                <p slot="copy"> "Welcome to my Imba app!"
                <h1 slot="header"> "Hello World"

tag main-content < main
    def render
        <self>
            <slot name="header">
            <slot name="copy">

### css
main-content {
    padding: 10px;
    display: block;
    border: 1px solid tomato;
    margin: 20px;
}
###
```

### Catch All Slot

### Named Slot

