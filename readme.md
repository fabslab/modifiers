## Modifier key queries

Inspired by [keymaster](https://github.com/madrobby/keymaster).
This is a small subset of the functionality in that library.

At any point in time you can query the `modifiers` object to see if a modifier key is held down.

Supported keys are:
`shift`, `⇧`, `alt`, `option`, `⌥`, `ctrl`, `control`, `⌃`, `command`, and `⌘`.

```javascript
if (modifiers.command || modifiers.control) {
  // do something special
}

// ..inside your click handler
if (modifiers.shift) {
  ...
}
```

The source is in CoffeeScript right now. I've supplied the generated JavaScript as well but I'll be uploading a handwritten JavaScript one soon. :)