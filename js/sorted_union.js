function uniteUnique() {
  //your code here
  var result = [];
  for(var i = 0; i < arguments.length; ++i){result = result.concat(arguments[i])};
  Array.prototype.contains = function(v){
    for(var i = 0; i < this.length; i++){
        if(this[i] === v) return true;
    }
    return false;
  };

  Array.prototype.unique = function() {
      var arr = [];
      for(var i = 0; i < this.length; i++) {
          if(!arr.contains(this[i])) {
              arr.push(this[i]);
          }
      }
      return arr; 
  }
  var lala = result.unique();
  return lala;
}

function uniteUnique(...lsts) {
   let args = [].concat(...lsts);
   return args.filter((arg, i) => args.indexOf(arg) == i);
}

function uniteUnique() {
  var uniques = [];
  var args = Array.prototype.slice.call(arguments);
  var all = [].concat.apply([], args);
  all.forEach(function(number) {
    if (uniques.indexOf(number) === -1) {
      uniques.push(number);  
    }
  }); 
  return uniques;   
}
