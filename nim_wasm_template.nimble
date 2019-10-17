# Package

version       = "0.1.0"
author        = "Igor Gulamov"
description   = "Nim template to use in browser with wasm"
license       = "MIT"

srcDir        = "src"

# Dependencies

requires "nim >= 1.0.0"

task buildwasm, "build nim_wasm_template":
  exec "nim c -d:emscripten -o:target/nim_wasm_template.js src/nim_wasm_template.nim"

task runwasm, "execute nim_wasm_template":
  exec "node target/run.js"

task buildrun, "build and execute":
  exec "nimble buildwasm"
  exec "nimble runwasm"