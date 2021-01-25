class DOMNodeCollection {
    constructor(htmlElArray){
        this.htmlElArray = htmlElArray;
    }

    html(str = null) {
        
        if (typeof(str) === 'string'){
            console.log(str);
            this.htmlElArray.forEach(node => {
                node.innerHTML = str;
            })
        }else {
            return this.htmlElArray[0].innerHTML;
        }
    }

    empty() {
        this.htmlElArray.forEach(node => {
            node.innerHTML = "";
        })
    }

    append(arg) {
        this.htmlElArray.forEach(node => {
            //go through each ele in arg, then assign 
            //each ele to innerHTML of each node
            arg.outerHTML
            node
        })
    }

}

const domNodeCollection = new DOMNodeCollection();
module.exports = DOMNodeCollection;