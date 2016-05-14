function chained(functions) {
  
  return function (input) {
    for (var i = 0; i < functions.length; i++) {
      input = functions[i](input);
    }
    return input;
  };
}

function chained(functions) {
  return function(input){
    return functions.reduce(function(input, fn){ return fn(input) }, input);
  }
}

