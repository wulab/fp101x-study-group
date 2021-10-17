const imitateMap = (items, mapFn) => {
  let newList = [];
  for (let i = 0; i < items.length; i++) {
    const item = mapFn(items[i]);
    newList.push(item);
  }
  return newList;
};

const doubleItems = imitateMap([1, 2, 3, 4, 5], (item) => item * 2);
console.log("result", doubleItems);

const add = (num1) => (num2) => num1 + num2;

function add_(num1) {
  return (num2) => num1 + num2;
}

// currying
// partially applied (ไม่ต้องระบุ argument ทั้งหมด)
const curriedAdd = (a) => (b) => a + b;
const plus10 = curriedAdd(10);

console.log(plus10(2));
console.log(plus10(40));

const curriedMap = (mapFn) => (items) => {
  let newList = [];
  for (let i = 0; i < items.length; i++) {
    newList.push(mapFn(items[i]));
  }
  return newList;
};

const itemsOne = [1, 2, 3, 4, 5];
const itemsTwo = [10, 20, 30, 40, 50];

const tripleItems = curriedMap((item) => item * 3);
const tenItems = curriedMap((item) => item * 10);

console.log(tripleItems(itemsOne));
console.log(tripleItems(itemsTwo));

console.log(tenItems(itemsOne));
console.log(tenItems(itemsTwo));
