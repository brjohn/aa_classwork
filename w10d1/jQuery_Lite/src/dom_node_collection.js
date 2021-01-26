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
        //if arg is just str, i
        this.htmlElArray.forEach(node => {
            //go through each ele in arg, then assign 
            //each ele to innerHTML of each node
            if (typeof(arg) === 'string'){
                node.innerHTML += arg;
            } else if (typeof(arg) === 'object' && !arg instanceof DOMNodeCollection){
                node.appendChild($l(arg)) // <= 
            } else {
                node.appendChild(arg)  // <= 
            }
            
            console.log(node.innerHTML);
        })
    }

    attr(thing, value) {
        if (!value) {
            return this[0].thing;
        } else {
            this.htmlElArray.forEach(node => {
                node.thing = value;
            })
        }
    }

    addClass(className) {
        //add class to every node?
        //iterate through nodes
        this.htmlElArray.forEach(node => {

        })
    }

}

const domNodeCollection = new DOMNodeCollection();
module.exports = DOMNodeCollection;