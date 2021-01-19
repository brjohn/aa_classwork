function sumArgs() {
    let arr = Array.from(arguments);
    let total = 0; 
    arr.forEach(el => {
        total += el;
    })
    return total; 
}

//console.log(sumArgs(1,2,3));

function sumRest(...arr) {
    let total = 0;
    arr.forEach(el => {
        total += el;
    })
    return total; 
}

//console.log(sumRest(1, 2, 3));

