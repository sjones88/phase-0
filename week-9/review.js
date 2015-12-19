// Pseudocode:
// Problem: Simulate a die roll. Roll method should take an array of strings as input and randomly return
// one of those strings. Also create a method that returns the number of 'sides' of the die.
// Input: an array of strings
// Output: a randomly selected element of the input array
// Steps:
// - Create a function that takes an array
// - IF array is empty, raise an error
// - Randomly select one element from the array
// - Return value of randomly selected element
// - Create a function that returns the length of the input array

// Initial solution:
// function argumentError(message) {
// 	this.message = message;
// 	this.name = "Error";
// }

// function randomElement(arrayLength) { // Random-element-generating function: This function takes the length of the input array and returns a random number that corresponds to an element in the array.
// 			return Math.floor(Math.random() * (arrayLength));
// 		};

// function roll(array) {
// 	if (array.length < 2)
// 		throw new argumentError("Your die needs more than 1 side!");
// 	else
// 		// function randomElement(arrayLength) { // Random-element-generating function: This function takes the length of the input array and returns a random number that corresponds to an element in the array.
// 		// 	return Math.floor(Math.random() * (arrayLength));
// 		// };
// 		var randomSide = randomElement(array.length); // Calls the random-element-generating function on length of array input.
// 		console.log("You rolled a " + array[randomSide]);
// };

// function sides(array) {
// 	console.log("Your die has " + array.length + " sides.")
// };

// var array = ["one"]
// roll(array);
// sides(array);

// Refactored solution
function roll(array) {
	if (array.length < 2)
		throw new RangeError("Your die needs more than 1 side!");
	else
		function randomElement(arrayLength) {
			return Math.floor(Math.random() * (arrayLength));
		}
		var randomSide = randomElement(array.length);
		console.log("Your die has " + array.length + " sides. " + "You rolled a " + array[randomSide] + ".");
};

// var input = ["one","two","three","four","five","six"]
// roll(input);
for (var counter = 0; counter < 11; counter++) {	// Roll die ten times.
	roll(["one","two","three","four","five","six"])
}

// Reflection:
// What concepts did you solidify in working on this challenge?
// I solidified my understanding of how to use JavaScript's Math.random method and the scope of variables in JavaScript.

// What was the most difficult part of this challenge?
// I had some trouble figuring out how to use the throw method.

// Did you solve the problem in a new way this time?
// I solved the problem without using classes. In JavaScript, it's easier to pass information between functions without using classes.

// Was your pseudocode different from the Ruby version? What was the same and what was different?
// My pseudocode was different because I knew that I didn't have to use classes to solve the problem.











