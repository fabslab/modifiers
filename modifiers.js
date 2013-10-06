(function() {

  var modifiers = {
    shift: 16,
    control: 17,
    alt: 18,
    option: 18,
    command: 91
  };

  var pressedModifiers = {};

  function resetModifiers() {
    for (var modifier in modifiers) {
      pressedModifiers[modifier] = false;
    }
  };

  function updateModifier(e) {
    var key = e.keyCode;
    var val = e.type == 'keydown';
    if (key == 93 || key == 224) {
      key = 91;
    }
    for (var modifier in modifiers) {
      if (key == modifiers[modifier]) {
        pressedModifiers[modifier] = val;
      }
    }
  };

  resetModifiers();

  document.addEventListener('keydown', updateModifier);

  window.addEventListener('focus', resetModifiers);

  this.modifiers = pressedModifiers;

}).call(this);
