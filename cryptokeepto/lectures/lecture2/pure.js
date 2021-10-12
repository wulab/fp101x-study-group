let person = {
  name: "jon",
  age: 30,
};

function changeName(person) {
  return {
    ...person,
    name: "mike",
  };
}

function changeAge(person) {
  return {
    ...person,
    age: 24,
  };
}

const newPerson = changeName(changeAge(person));
console.log(newPerson);
