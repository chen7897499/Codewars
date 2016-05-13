const billboard = (name, price = 30) => name.split("").reduce(currentValue => currentValue + price, 0);

//"Jeong-Ho Aristotelis".split("").reduce(function(a){return a + 30},0)
//"Jeong-Ho Aristotelis".split("").reduce(function(a){a+=30; return a},0)
