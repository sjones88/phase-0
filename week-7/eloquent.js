// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var sayHello = 'Steve';
console.log('Hello ' + sayHello);



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
for (var counter = '#'; counter.length <= 7; counter += '#')
	console.log(counter);

// Functions

// Complete the `minimum` exercise.
function min(arg1, arg2) {
	if (arg1 < arg2)
		return arg1;
	else if (arg1 == arg2)
		return [arg1, arg2];
	else return arg2;
};
console.log(min(-10, 10));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
function me(name, age, favFoods, quirk) {
	this.name = name;
	this.age = age;
	this.favFoods = favFoods;
	this.quirk = quirk;
}
var newMe = new me("Steve", 27, ["pizza", "ice cream", "beer"], "I hate coconuts.")
console.log(newMe);