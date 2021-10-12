let person = {
  name: "John",
  age: 50,
};

function changeName() {
  person.name = "Mike";
  return person;
}

function changeAge(person) {
  person.age = 26;
}

changeName();
changeAge(person);

console.log(person);
