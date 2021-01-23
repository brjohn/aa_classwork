const dogs = {
  Corgi: "https://www.akc.org/dog-breeds/cardigan-welsh-corgi/",
  "Australian Shepherd": "https://www.akc.org/dog-breeds/australian-shepherd/",
  Affenpinscher: "https://www.akc.org/dog-breeds/affenpinscher/",
  "American Staffordshire Terrier":
    "https://www.akc.org/dog-breeds/american-staffordshire-terrier/",
  Tosa: "https://www.akc.org/dog-breeds/tosa/",
  "Labrador Retriever": "https://www.akc.org/dog-breeds/labrador-retriever/",
  "French Bulldog": "https://www.akc.org/dog-breeds/french-bulldog/",
};

const dogLinkCreator = (dogs) => {
  dogLinks = [];
  for (var breed in dogs) {
    var breedLink = dogs[breed];
    const aTag = document.createElement("a");
    aTag.innerText(breed);
    aTag.setAttribute("href", breedLink);

    const liTag = document.createElement("li");
    liTag.append(aTag);
    dogLinks.push(liTag);
  }
  return dogLinks;
};

console.log(dogLinkCreator(dogs));
