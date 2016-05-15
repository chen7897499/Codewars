function isPrime(value) {
    for(var i = 2; i < value; i++) {
        if(value % i === 0) {
            return false;
        }
    }
    return value > 1;
}

//https://www.thepolyglotdeveloper.com/2015/04/determine-if-a-number-is-prime-using-javascript/
