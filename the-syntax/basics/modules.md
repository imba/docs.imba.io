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

### import

```ruby
# index.imba
import {mult,Todo,TodoView,TYPE} from './somefile'

var todo = Todo.new
var result = mult(1,2)
var view = <todo-view[todo]>
```

### require

Require works exactly like in plain JavaScript.

```ruby
var fs = require 'fs'
var stuff = require './somefile'

var body = fs.readFileSync('something.txt')
var todo = stuff.Todo.new
var result = stuff.mult(1,2)
```

