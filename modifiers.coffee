modifierNames =
  shift: 16
  control: 17
  alt: 18
  option: 18
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

document.addEventListener 'keydown', updateModifier
# reset on window focus to avoid certain errors
window.addEventListener 'focus', resetModifiers

# export globally
this.modifiers = pressedModifiers