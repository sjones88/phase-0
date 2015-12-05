 // JavaScript Olympics

// I paired with Mason Pierce on this challenge.

// This challenge took me 6 hours.


// Warm Up


// Bulk Up
// 
var athlete = {
	"name": "Usain Bolt",
	"event": "running fast",
};

 // "Usain Bolt": {event: "running fast af"};
// console.log(athlete);
function addWin(athleteObj, winBool) {
  athleteObj["win?"] = winBool;
  	function win() {
  	  if (winBool == true)
  	    console.log(athleteObj["name"] + " won at " + athleteObj["event"] + ".");
  	  else
  	  	console.log(athleteObj["name"] + " didn't win.");
  };
  win();
};
addWin(athlete, true)


// function win(athObj) {
//   if athObj["win?"] == true;
//     console.log(athObj["name"] + "won at" + athObj["event"]);
//     else
//       console.log(athObj["name"] + "is a loser :\\");
// };
// win(athlete);

// console.log(athletes["Usain Bolt"]["event"]);

// ...So our "event:" is treated as a STRIMBLE??


// Jumble your words
var jumble = function(jumbleString) {
	jumbleString = jumbleString.split("");
	jumbleString = jumbleString.reverse();
	console.log(jumbleString.join(""));
}

// jumble("Hello there!")


// 2,4,6,8
function isEven(nums) {
	var evenNums = []
	for (var counter = 0; counter < nums.length; counter++)
		if (nums[counter] % 2 == 0)
			evenNums.push(nums[counter]);
	console.log(evenNums);
};

// isEven([1,2,3,4,5,6,7,8,9,10,11,12]);


// "We built this city"
function Athlete(name, age, sport, quote){
	this.name = name;
	this.sport = sport;
	this.age = age;
	this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
// - What JavaScript knowledge did you solidify in this challenge?
// I learned about proper 'if' syntax the HARD way. I spent more time than I care to remember stuck on the if statement 
// in the first solution before I realized that I needed to put everything after the 'if' in parentheses. I definitely solidified my understanding of
// JS syntax, in general, through this challenge.
// - What are constructor functions?
// Constructor functions are similar to classes in Ruby in that constructors allow you to create new obects that are instances of the constructor function.
// - How are constructors different from Ruby classes (in your research)?
// Constructors don't require the use of special variables (like Ruby's instance variables) in order to allow new instances of the constructor to access the values stored in the constructor's variables.









