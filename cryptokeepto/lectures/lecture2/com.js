// non composition
const myName = "Tolstoy";

const formatNameToArray = (name) => {
  const upperCaseName = name.toUpperCase();
  return upperCaseName.split("").reverse();
};

console.log(formatNameToArray(myName));

// composition
const toUpperCase = (text) => text.toUpperCase();
const textToArray = (text) => text.split("");
const reverseArray = (text) => text.reverse();

console.log(reverseArray(textToArray(toUpperCase(myName))));
