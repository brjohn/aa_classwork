const readline = require('readline');

const reader = readline.createInterface({
        input: process.stdin,
        output: process.stdout
})

function addNumbers(sum, numsLeft, completionCallback) {
    let scope = {sum, numsLeft};
    if (numsLeft > 0) {
        reader.question("Give a number\n", function(answer) {
            //completionCallback.call(scope, answer)
            let value = parseInt(answer);
            sum += value;
            completionCallback(sum);
            addNumbers(sum, (numsLeft-1), completionCallback);
        });
    } else if (numsLeft === 0) {
        completionCallback.call(scope, sum);
    }
}

/*function completionCallback(answer) {
    let value = parseInt(answer);
    let sum = this.sum += value ;
    console.log(sum);
    addNumbers(sum, this.numsLeft, completionCallback);
    
}*/

addNumbers(0, 3, sum => console.log(`Total Sum: ${sum}`));