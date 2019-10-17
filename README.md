# Nim wasm template

## Build and run

**Build**
```sh
nimble buildwasm
```

**Run**
```sh
nimble runwasm
```

## Known issues
You must pass 1 cpu tick via setTimeout to take Nim GC more time to initialize. Look at `target/run.js`.


## Dependencies

Install emcc and set source for enviroment

```sh
cd ~
git clone https://github.com/emscripten-core/emsdk.git ~/emsdk
cd emsdk
./emsdk install latest
./emsdk activate latest
source ~/emsdk/emsdk_env.sh #optionally set it into .bashrc
```

Also install jsbind
```sh
nimble install jsbind
```