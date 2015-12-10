/*
Gradebook from Names and Scores
I worked on this challenge with Paul Dynowski.
This challenge took me 1 hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.
// var gradebook = {}

// var index = 0;
// for(var student in students) {
//   gradebook[students[student]] = {testScores: scores[index]};
//   index++;
// }

 

// gradebook.addScore = function(name, score) {
//   gradebook[name].testScores.push(score);
// }

// gradebook.getAverage = function(name, scores) {
//   return average(gradebook[name].testScores);
// }


// var average = function(scores){
//   var total = 0;
//   for(var score in scores){
//     total += scores[score];
//   }
//   return total/scores.length;
// } 


// __________________________________________
// Refactored Solution

var gradebook = {}
students.forEach(function(student, index) {
  gradebook[student] = {testScores: scores[index]};
})
gradebook['addScore'] = function(name, score) {
  gradebook[name].testScores.push(score);
}
gradebook['getAverage'] = function(name) {
  return average(gradebook[name].testScores);
}
var average = function(scores) {
  return(scores.reduce(function(sum, score) {
    return sum + score;
  }))/scores.length;
}



// __________________________________________
// Reflect
// What did you learn about adding functions to objects?
// I learned that all property keys are strings in JavaScript, and when you use the dot notation to create
// a new property, you don't need to put quotation marks around the property name, however when you use bracket
// notation, you must put the new property key in quotes.

// How did you iterate over nested arrays in JavaScript?
// In our refactored solution, we used the forEach method to iterate over nested arrays.

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
// The forEach method was new to me; this was the first time that I had implemented it. forEach takes an array,
// an argument to represent the current value being processed, and the index of the current element being processed in the array.


// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)
