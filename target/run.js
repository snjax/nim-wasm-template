const Module = require('./nim_wasm_template.js')


Module['onRuntimeInitialized'] = () => setTimeout(() => {

  const res = Module.ccall('say_hello',
    'string', // return type
    [], // argument types
    []); // arguments
  console.log(res);

}, 0);

