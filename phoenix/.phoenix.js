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
Key.on('down', ['cmd', 'alt', 'ctrl'], reduce)
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

function reduce() {
  var screen = Screen.main().flippedVisibleFrame()
  var window = Window.focused()

  if (!window) return

  const isBigger = (percentX, percentY) => {
    if (!percentY) percentY = percentX

    const size = window.size()

    if (
      size.width > screen.width * percentX &&
      size.height > screen.height * percentY
    ) {
      return true
    }

    return false
  }

  const resize = (percentX, percentY) => {
    if (!percentY) percentY = percentX

    window.setSize({
      width: screen.width * percentX,
      height: screen.height * percentY
    })
  }

  if (isBigger(0.85)) {
    resize(0.85)
  } else if (isBigger(0.6, 0.65)) {
    resize(0.6, 0.65)
  }

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
