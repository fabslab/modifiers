# Modifier key queries

Inspired by [keymaster](https://github.com/madrobby/keymaster).
This is a small subset of the functionality in that library. See for yourself how small it is.

At any point in time you can query the `modifiers` object to see if a modifier key is held down.

Default supported keys are:
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

You can also add your own to the defaults:
```javascript
modifiers.add({{
  leftArrow: 37,
  upArrow: 38,
  rightArrow: 39,
  downArrow: 40,
  w: 87,
  a: 65,
  s: 83,
  d: 68
});
```

### Building

To create the minified and compressed version with source mapping, run:

`uglifyjs modifiers.js --source-map modifiers.min.map --screw-ie8 -c -m -o modifiers.min.js`

The code uses addEventListener so if you sadly need to support IE8 you'll want to change the code to use
something like what's described [here](http://msdn.microsoft.com/en-us/magazine/ff728624.aspx).


MIT Licensed.
