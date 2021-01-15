const readline = require("readline");

const reader = readline.createInterface({
        input: process.stdin,
        output: process.stdout
})

function addNumbers(sum, numsLeft, completionCallback) {
    if (numsLeft > 0) {
        reader.question("Give a number", completionCallback(answer));
    } else if (numsLeft === 0) {
        completionCallback(sum);
    }
}

function completionCallback(answer) {
    sum = parseInt(answer);
    sum++;
    console.log(sum)
    addNumbers(sum, )
}