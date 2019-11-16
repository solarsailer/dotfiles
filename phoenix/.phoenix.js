Phoenix.set({
  daemon: true,
  openAtLogin: true
})

// -------------------------------------------------------------
// Constants.
// -------------------------------------------------------------

const horizontal = Symbol()
const vertical = Symbol()
const DELTA = 20

// -------------------------------------------------------------
// Bindings.
// -------------------------------------------------------------

Key.on('up', ['cmd', 'alt', 'ctrl'], fillScreen)
Key.on('down', ['cmd', 'alt', 'ctrl'], normal)
Key.on('left', ['cmd', 'alt', 'ctrl'], leftHalf)
Key.on('right', ['cmd', 'alt', 'ctrl'], rightHalf)

Key.on('h', ['cmd', 'alt', 'ctrl'], () => move(horizontal, -DELTA))
Key.on('j', ['cmd', 'alt', 'ctrl'], () => move(vertical, +DELTA))
Key.on('k', ['cmd', 'alt', 'ctrl'], () => move(vertical, -DELTA))
Key.on('l', ['cmd', 'alt', 'ctrl'], () => move(horizontal, +DELTA))

// -------------------------------------------------------------
// Helpers.
// -------------------------------------------------------------

function move(direction, delta) {
  var window = Window.focused()

  if (!window) return

  let position = window.topLeft()
  if (direction === horizontal) position.x += delta
  else if (direction === vertical) position.y += delta

  window.setTopLeft(position)
}

function fillScreen() {
  var screen = Screen.main().flippedVisibleFrame()
  var window = Window.focused()

  if (!window) return

  window.setFrame({x: 0, y: 0, width: screen.width, height: screen.height})
}

function normal() {
  var screen = Screen.main().flippedVisibleFrame()
  var window = Window.focused()

  if (!window) return

  window.setSize({
    width: screen.width * 0.85,
    height: screen.height * 0.85
  })

  window.setTopLeft({
    x: screen.x + screen.width / 2 - window.frame().width / 2,
    y: screen.y + screen.height / 2 - window.frame().height / 2
  })
}

function center() {
  var screen = Screen.main().flippedVisibleFrame()
  var window = Window.focused()

  if (!window) return

  window.setTopLeft({
    x: screen.x + screen.width / 2 - window.frame().width / 2,
    y: screen.y + screen.height / 2 - window.frame().height / 2
  })
}

function leftHalf() {
  const screen = Screen.main().flippedVisibleFrame()
  const window = Window.focused()

  if (!window) return

  window.setTopLeft({
    x: screen.x,
    y: screen.y
  })

  window.setSize({
    width: screen.width / 2,
    height: screen.height
  })
}

function rightHalf() {
  const screen = Screen.main().flippedVisibleFrame()
  const window = Window.focused()

  if (!window) return

  window.setTopLeft({
    x: screen.width / 2,
    y: screen.y
  })

  window.setSize({
    width: screen.width / 2,
    height: screen.height
  })
}
