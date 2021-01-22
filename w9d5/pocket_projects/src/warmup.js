
const partyHeader = document.getElementById('party');

export const htmlGenerator = (string, htmlElement) => {
    htmlElement.innerHTML = "" ; 
    const pTag = document.createElement('p');
    pTag.innerText = string; 
    htmlElement.append(pTag);

};

htmlGenerator('Party Time.', partyHeader);

