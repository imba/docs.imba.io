# Imba Styled Components

In the world of Components, css is the uggly duckling struggling to fit in. Templates and Javascript have adapted into the component architecture, Components can dynamically share data and functions, but sharing styles is still broken. That is what this proposal seeks to solve.

There is a react library called styled-components, that has served as the inspiration for this proposal. They are a really forward thinking and taleneted front end developers, and they have come out with the most promising solution to the css problem found in component architechtures. While they have solved that problem, they can only try bound by the syntax, and featureset of react. With Imba's gifted creator, and language flexibility, Imba can solve this problem ahead of js, and other frameworks.

The idea is that imba styled components can be compiled at build time or run at run time.

It uses convention over configuration CSS variables are used as the main dynamic source of data for styled components, so that they can be compiled The exception is media queries which cannot use the css var\(\) function. Imba dynamic media queries can be compiled to css queries at build time.

Styled Components behave as js classes They contain no app logic, but can be used within tags and app logic. The styles of each component are compiled to a unique class that is applied to all the instances of that component that have no other unique styles.

If styled components are not used in tags, they can be shaken out of the build along with their unused styles. This will compile to incredibly DRY css, and it will revolutionize front-end design.

we need some sort of config file that a user can set the name of the compiled css. That compiled css file needs to be imported in the index.html. it would be great to have a CLI for this.

Imba Styled Components will be created with the `styled` keyword.

A user begins by creating a theme which will contain css custom properties to be used throughout the entire project.

Here I ported Tailwind's colors to be used as my theme.



Users can create a Theme using a styled component. Here i have converted Tailwind's colors and global spacings into a Theme.

```text
tag hello-world
    <self>
```

