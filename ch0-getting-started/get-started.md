---
description: The fastest way to get started with Imba.
---

# Getting Started

The easiest way to get started with Imba is to use the [official template](https://github.com/imba/imba2-hello-world), see the [Getting Started](get-started.md) page on how to get it. If you are using Webpack, other bundlers or just want to manually run stuff then you can install Imba this way:

```bash
yarn global add imba@pre # npm -g install imba@pre
```

### Troubleshooting

If you end up with some kind of error message, make sure you have a recent [Node.js](https://nodejs.org) version installed.

```bash
node --version
```

* [ ] TODO\(alexander\): Remove `@pre` when Imba v2 has been released

## Using the Template

To get started quickly you can use the [official template](https://github.com/imba/template). On GitHub you can use it to create a new repository by hitting [Use this template ](https://github.com/imba/template/generate)or clone it locally with git

```bash
git clone https://github.com/imba/template my-app
```

When you have it locally then you need to run the usual commands

```bash
cd my-app
yarn install # npm install
yarn start # npm run start
```

Your Imba app is now running on [http://localhost:10001](http://localhost:10001%20) 🥳

Happy coding!

