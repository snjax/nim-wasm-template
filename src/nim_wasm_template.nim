import jsbind/emscripten
import strformat


proc say_hello: cstring {.EMSCRIPTEN_KEEPALIVE.} =
  var msg = @"Hello from wasm"
  return &"{msg}"

