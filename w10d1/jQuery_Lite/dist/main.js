/*
 * ATTENTION: The "eval" devtool has been used (maybe by default in mode: "development").
 * This devtool is neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./src/dom_node_collection.js":
/*!************************************!*\
  !*** ./src/dom_node_collection.js ***!
  \************************************/
/***/ ((module) => {

eval("class DOMNodeCollection {\n    constructor(htmlElArray){\n        this.htmlElArray = htmlElArray;\n    }\n\n    html(str = null) {\n        \n        if (typeof(str) === 'string'){\n            console.log(str);\n            this.htmlElArray.forEach(node => {\n                node.innerHTML = str;\n            })\n        }else {\n            return this.htmlElArray[0].innerHTML;\n        }\n    }\n\n    empty() {\n        this.htmlElArray.forEach(node => {\n            node.innerHTML = \"\";\n        })\n    }\n\n    append(arg) {\n        //if arg is just str, i\n        this.htmlElArray.forEach(node => {\n            //go through each ele in arg, then assign \n            //each ele to innerHTML of each node\n            if (typeof(arg) === 'string'){\n                node.innerHTML += arg;\n            } else if (typeof(arg) === 'object' && !arg instanceof DOMNodeCollection){\n                node.appendChild($l(arg)) // <= \n            } else {\n                node.appendChild(arg)  // <= \n            }\n            \n            console.log(node.innerHTML);\n        })\n    }\n\n    attr(thing, value) {\n        if (!value) {\n            return this[0].thing;\n        } else {\n            this.htmlElArray.forEach(node => {\n                node.thing = value;\n            })\n        }\n    }\n\n    addClass(className) {\n        //add class to every node?\n        //iterate through nodes\n        this.htmlElArray.forEach(node => {\n\n        })\n    }\n\n}\n\nconst domNodeCollection = new DOMNodeCollection();\nmodule.exports = DOMNodeCollection;\n\n//# sourceURL=webpack:///./src/dom_node_collection.js?");

/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		if(__webpack_module_cache__[moduleId]) {
/******/ 			return __webpack_module_cache__[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
(() => {
/*!**********************!*\
  !*** ./src/index.js ***!
  \**********************/
eval("const DOMNodeCollection = __webpack_require__(/*! ./dom_node_collection */ \"./src/dom_node_collection.js\");\n\nwindow.$l = function(selector){ \n    //core function\n    if (selector instanceof HTMLElement) {\n        return new DOMNodeCollection([selector]);\n    } else {\n        const NodeList = document.querySelectorAll(selector); \n        const nodeArray = Array.from(NodeList);\n        return new DOMNodeCollection(nodeArray);\n    }\n}\n\n//window.$l = $l;\n\n//# sourceURL=webpack:///./src/index.js?");
})();

/******/ })()
;