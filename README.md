# Purescript Tailwind
Type-safe Tailwind CSS with zero runtime performance!

This package provides typed functions as Tailwind CSS classes/modifers
and generate the final combined CSS classnames _at compile time_ 
for `tailwindcss` to detect and generate the CSS code.

## How It Works
*TODO* Add a reference to src/Example.purs

Whenever your Purescript code is compiled, 
`tailwindcss` will scan the compiled-JS files in the `output` folder 
and automatically generate a CSS file based on the classes that are in the files. 
See [class-detection-in-depth](https://tailwindcss.com/docs/content-configuration#class-detection-in-depth) for more information.

## Installation Guide
```
spago install tailwindcss
npm install --save-dev tailwindcss
```
You can choose any way to integrate Tailwind 
into your development pipeline as per [Tailwind Installation](https://tailwindcss.com/docs/installation).

The only requirement for this package to work is 
to add your Purescript compiled-JS folder 
into your `tailwind.config.js`'s `content` (usually `./output/**/*.js`).

For example: 
```js
// tailwind.config.js
module.exports = { 
  content: ["./output/**/*.js"],
  // … rest of your tailwind.config.js
}
```

## TODOs

- [ ] Provide CLI 
- [ ] Hard-coded theme.extend.screens https://tailwindcss.com/docs/screens
- [ ] Hard-coded pseudo-classes https://tailwindcss.com/docs/hover-focus-and-other-states#quick-reference
- [ ] *ASSUME* all other parts of Tailwind Config are generated eg. extra colors, spacing, etc
