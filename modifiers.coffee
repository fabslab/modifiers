# cross-browser events
addListener = (el, event, handler) ->
  if el.addEventListener?
    el.addEventListener event, handler, false
  else if el.attachEvent?
    el.attachEvent 'on' + event, ->
      handler(window.event)
  return

modifierNames =
  '⇧': 16
  shift: 16
  '⌃': 17
  ctrl: 17
  control: 17
  '⌥': 18
  alt: 18
  option: 18
  '⌘': 91
  command: 91

pressedModifiers = {}

resetModifiers = ->
  for k in modifierNames
    pressedModifiers[k] = false

updateModifier = (e) ->
  key = e.keyCode
  val = e.type is 'keydown'
  if key is 93 or key is 224
    key = 91
  for k in modifierNames
    pressedModifiers = val

# initialise
resetModifiers()

addListener document, 'keydown', updateModifier
addListener document, 'keyup', updateModifier
# reset on window focus to avoid certain errors
addListener window, 'focus', resetModifiers

# export globally
this.modifiers = pressedModifiers