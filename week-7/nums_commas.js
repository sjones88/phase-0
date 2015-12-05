/* 
Your previous Ruby content is preserved below:

// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with Mason Pierce.

// Pseudocode
Input: an integer
Output: a string
Steps:
- convert to a string
- convert to array
- reverse input
- every third character, insert a comma
- reverse the array
- join array elements
- convert element to a string
*/
// Initial Solution

// var separateComma = function(number) {
//   number = number.toString();
//   number = number.split("");
//   number = number.reverse();
//   //number = number.slice(2);
  
//   for (var counter = 3; counter < number.length; counter = counter + 4)
//   number.splice(counter, 0, ","); // Changed (counter, 3, ',') to (counter, 0, ',')
//   number = number.reverse();
//   number = number.join(""); // join() separates elements with commas by default. Hence the empty string as a parameter.
//   console.log(number)  
// }
// separateComma(8000000)


// Refactored Solution
function separateComma(number) {
	number = number.toString().split("").reverse();
	for (var i = 3; i < number.length; i = i + 4)
	  number.splice(i, 0, ",");
	  number = number.reverse().join("");
	console.log(number);
};
separateComma(37857172857);


// Your Own Tests (OPTIONAL)




// Reflection
// - What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem
// differently?
// The logic of my approach was about the same as my Ruby solution, and the pseudocode reflects that. The most challenging thing was figuring out how to use the for loop
// to splice commas into the array. It wasn't entirely intuitive.
// - What did you learn about iterating over arrays in JavaScript?
// for loops are actually a fairly elegant way to iterate over an array. At first I was tempted to find the JS equivalent of the Ruby .each method, but the for loop worked out well.
// - What was different about solving this problem in JavaScript?
// The biggest difference was using a for loop instead of something like Ruby's each method.
// - What built-in methods did you find to incorporate in your refactored solution?
// I used the following methods:
  // toString, split, reverse, splice, join





