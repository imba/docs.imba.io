---
description: A short tutorial on how to write a command line tool
---

# Making a CLI in Imba

While you can use any of the popular CLI scaffolding on NPM to create a CLI tool and it will work with Imba. You can also write all your scripts and tooling in Imba. 

### Installing Imba Globally

Depending on on how you want to use Imba, it can be convenient to have it installed globally. This way you can invoke the `imba` where you need it.

```
yarn global add imba@pre # npm -g install imba@pre
# TODO: Remove @pre when Imba v2 has been released
```

### Simple Scripts

Assuming you have installed `imba` globally, you can then add the shebang and start writing your code.

```bash
#!/usr/bin/env imba

console.log('hello imba')
```

### Creating a New Project

TODO: show steps for init, handling args \(process.arg...\), publish to npm, etc.

