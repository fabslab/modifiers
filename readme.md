## Modifier key queries

Inspired by [keymaster](https://github.com/madrobby/keymaster).
This is a small subset of the functionality in that library. See for yourself how small it is.

At any point in time you can query the `modifiers` object to see if a modifier key is held down.

Supported keys are:
`shift`, `alt`, `option` (same as `alt`), `control`, `command`

```javascript
if (modifiers.command || modifiers.control) {
  // do something special
}

// ..inside your click handler
if (modifiers.shift) {
  ...
}
```

I've supplied the CoffeeScript source, the JavaScript generated from that, and the minified (UglifyJS2)
version of that JavaScript (which is generally what you'll want to use).

The code uses addEventListener so if you sadly need to support IE8 you'll want to change the code to use
something like what's described [here](http://msdn.microsoft.com/en-us/magazine/ff728624.aspx).