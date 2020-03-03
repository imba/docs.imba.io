# Async In Imba

## Async Await

Imba supports the await keyword, which compiles directly to async/await in JavaScript. The only difference is that you do not need to mark your functions as async. Any function that contains an await will automatically be compiled to an async function.

```ruby
def load url
    var res = await window.fetch url
    return res.json
let posts = await load "https://jsonplaceholder.typicode.com/posts"

tag App
    def render
        <self>
            for post in posts
                <div.post>
                    <h3> post['title']
                    <span.user> "user: {post['id']}"
                    <p> post['body']
Imba.mount <App>
```

## Example

## The Event Loop

info goes here

## Async with Callbacks

Info goes here

## From Callbacks to Promises

info

## From Promises to Async/Await

info

## AJAX and APIs

info

## AJAX Calls with Fetch and Promises

info

## AJAX Calls with Fetch ad Async/Await

info

