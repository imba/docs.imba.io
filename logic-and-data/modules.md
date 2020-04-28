# Modules

### export

```
export var TYPE = 3
```

```ruby

export def mult a,b
	a * b

export class Todo
	def initialize
		self

export todo-view
	def render
		<self> data:title
```

### Import

```ruby
# index.imba
import {mult,Todo,TodoView,TYPE} from './somefile'

var todo = Todo.new
var result = mult(1,2)
var view = <todo-view[todo]>
```

### Require \(V2\)

For consistency, require is done with the same syntax as import.

```text
import m from 'module'
```

would be equivalent to

```text
var m = require 'module'
```

```ruby
var fs = require 'fs'
var stuff = require './somefile'

var body = fs.readFileSync('something.txt')
var todo = stuff.Todo.new
var result = stuff.mult(1,2)
```



