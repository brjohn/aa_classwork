window.$l = function(selector){
    //core function
    const NodeList = document.querySelectorAll(selector);
    const nodeArray = Array.from(NodeList);
    return nodeArray;
}

//window.$l = $l;