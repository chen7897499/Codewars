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