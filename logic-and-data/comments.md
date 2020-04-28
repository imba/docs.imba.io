---
description: The syntax support for comments
---

# Comments

You can choose between the `#` and `/` when writing comments.

### Single Line Comments

Adding single line comments can be done with `#` and `//`. They can also be added after valid code on the same line but need to respect the current indentation.

```ruby
# This is a single line comment
tag hello-world # It can also go at the end of a line
    def render
        // This is also a comment    
        <self> "hello-world"
```

## Multi-line Comments

You can use `###` and `/* */` for multi line comments

```ruby
/* This is a 
multiline comment.
*/

tag hello-world 
    ###
    Comments can be nested 
    anywhere in your code.
    ### 
    def render
        <self> "hello-world"
```

> 🎮 [Play with this code on Scrimba](https://scrimba.com/c/cKpJRvTg)

