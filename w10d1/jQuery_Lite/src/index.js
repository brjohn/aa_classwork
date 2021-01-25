const DOMNodeCollection = require('./dom_node_collection');

window.$l = function(selector){ 
    //core function
    if (selector instanceof HTMLElement) {
        return new DOMNodeCollection([selector]);
    } else {
        const NodeList = document.querySelectorAll(selector); 
        const nodeArray = Array.from(NodeList);
        return new DOMNodeCollection(nodeArray);
    }
}

//window.$l = $l;