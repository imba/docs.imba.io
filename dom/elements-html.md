# HTML Elements

## Syntax Changes

Imba takes any html element. Just remember that because Imba is indentation-based, it does not require closing tags to denote nesting. Therefore, in Imba all closing tags are removed.

```markup
<p> This is a pragraph </p>
```

The above will look like this in Imba

```markup
<p> "this is a paragraph"
```

Notice that the text is wrapped in quotes. In Imba, data types are treated as it would in Javascript. So a string of text must be wrapped in double or single quotes. 

## HTML Properties

HTML properties work just as they would in vanilla HTML with the exception of classes and id's.

```markup
<p width="200"> "this is a paragraph"
```

## 

