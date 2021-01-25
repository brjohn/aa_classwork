class DOMNodeCollection {
    constructor(htmlElArray){
        this.htmlElArray = htmlElArray;
    }

    html(str = null) {
        
        if (typeof(str) === 'string'){
            console.log(str);
            this.htmlElArray.forEach(node => {
                node.innerHTML = str;
                console.log(node.innerHTML);
            })
        }else {
            return this.htmlElArray[0].innerHTML;
        }
    }

}

const domNodeCollection = new DOMNodeCollection();
module.exports = DOMNodeCollection;