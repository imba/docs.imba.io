---
description: The fastest way to get started with Imba.
---

# Get Started

## Quick Install

To get started quickly, just run the following command from the terminal. Just make sure you have [yarn](https://classic.yarnpkg.com/en/docs/install/#mac-stable) installed.

The following command will: clone the imba2-hello-world repo, update the imba2 package to the latest version, update the imba-rollup plugin to the latest version, and start a live server with hot module reloading.   
You my replace `my-imba-app` on the first and second lines of the command for any folder name you desire.

```text
git clone https://github.com/imba/imba2-hello-world.git my-imba-app \
    && cd my-imba-app \
    && yarn add imba@pre \
    && yarn add imba-rollup \
    && yarn start 
```

Now open the my-imba-app directory on your favorite code editor, and happy coding.

## Step by Step

#### 1. Install Imba

Install your imba package to your dependencies

```text
# for prerelease Imba v2
yarn add imba@pre
```

#### 2. Install Imba-rollup

You may use your own bundler, but we have a handy imba-rollup plugin to help you get going quickly.

```text
yarn add imba-rollup
```

#### 3. Create ./public/index.html

You need a `./public` directory with your `index.html`. Put the name of your main app component inside the the body of the index.html. Note: you must follow the web-components naming convention—of two or more words separated by a dash`<two-words>` —for all imba components.

{% code title="./public/index.html" %}
```markup
<!DOCTYPE html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  </head>
  <body>
    <imba-app></imba-app>
  </body>
</html>
```
{% endcode %}

#### 4. Create ./src/app.imba

Create a `./src` directory for all your imba files. And there place your `app.imba` this will be your main view component.

```ruby
tag imba-app
  def render
    <self>
      <h1> "Hello World!"
```

In order to render your component you can write `imba.mount <imba-app>` at the bottom of your app.imba file, but let's use a config file instead to tell imba-rollup what to do.

#### 5. Create imbaconfig.json

At the root of your project, create an imbaconfig.json file. Here we tell imba-rollup where the main source file is, your output location, the js standard, and whether you want source mapping or not.

{% code title="./imbaconfig.json" %}
```javascript
{
	"entries": [{
		"input": "./src/app.imba",
		"output": {
			"file": "./public/app.imba.js",
			"format": "esm",
        	"name": "bundle",
        	"sourcemap": true
		}
	}]
}
```
{% endcode %}

#### 6. Add build scripts to package.json

Let's make sure we have some build scripts ready. Here's a good sample. Our start script will watch all our files for changes, and it will bundle them and serve them to `https://localhost:10001` with hot module reloading.

```javascript
{
  "scripts": {
    "build": "imba-rollup",
    "start": "imba-rollup --watch --serve --hmr",
    "check-version": "imbac --version"
  },
  "dependencies": {
    ...
  }
}
```

#### 7. Install dependencies

```text
yarn
```

#### 8. Start your imba local server

```text
yarn start
```

Open [http://localhost:10001/](http://localhost:10001/) to view your live server.

#### 9. Bundle for production

```text
yarn build
```

Then push your public folder your web host to see it live on the web.

