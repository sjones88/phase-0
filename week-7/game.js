// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Find a weapon and slay the ogre
// Goals: Move around the map, find a weapon, and fight the ogre
// Characters: Player, Ogre
// Objects: Player(position, health, weapon), Ogre(position, health)
// Functions: moveUp, moveDown, moveForward, moveBack, attack, flee

// Pseudocode
// Declare Player object with position, health, and weapon properties.
// Add functions to allow player to move, pickup weapons, attack, and flee.
// Declare Ogre object, assign Ogre a random position
// Move Player (with move functions) and move Ogre to random position
// Check position of Player relative to weapon and ogre
// If player encounters a weapon, add weapon to Player object
// If player encounters Ogre AND player doesn't have a weapon, reduce player health
// If player encounters Ogre AND player has a weapon, player attacks ogre

// Initial Code
// var player = {
// 	posX: 0,
// 	posY: 0,
// 	weapon: 0,
// 	health: 100,
// 	success: false,
// }
// var ogre = {
// 	health: 100,
// 	posX: Math.floor((Math.random()*100)+1),
// 	posY: Math.floor((Math.random()*100)+1),
// }
// var rocketLauncher = {
// 	damage: 100,
// 	posX: Math.floor((Math.random()*100)+1),
// 	posY: Math.floor((Math.random()*100)+1),
// }

// function move(direction) {
// 	if(direction === 'forward'){
// 		player.posX += 10;
// 	}
// 	else if(direction === 'back'){
// 		player.posX -= 10;
// 	}
// 	else if(direction === 'up'){
// 		player.posY += 10;
// 	}
// 	else if(direction === 'down'){
// 		player.posY -= 10;
// 	}
// 	ogre.posX = Math.floor((Math.random()*100)+1);
// 	ogre.posY = Math.floor((Math.random()*100)+1);

// 	if(player.posX === rocketLauncher.posX && player.posY === rocketLauncher.posY){
// 		player.weapon = 100;
// 		console.log("You picked up a rocket launcher! Go slay the ogre!");
// 	}
// 	if(player.posX === ogre.posX && player.posY === ogre.posY && player.weapon != 100){
// 		console.log("The ogre is near and you have no weapon! This will not end well for you.");
// 		attackOrFlee('flee');
// 	}
// 	if(player.posX === ogre.posX && player.posY === ogre.posY && player.weapon == 100){
// 		attackOrFlee('attack');
// 	}

// 	function attackOrFlee(choice) {
// 		if(choice === 'flee'){
// 			console.log('You try to run, but the ogre smashes you into oblivion. Game over.');
// 			player.health = 0;
// 		}
// 		else if(choice === 'attack' && player.weapon == 100){
// 			ogre.health = 0;
// 			player.success = true;
// 			console.log('You fire your rocket launcher at the ogre. The ogre explodes. You win!');
// 		}
// 		else if(choice === 'attack' && player.weapon == 0){
// 			console.log("You don't have a weapon so you try to punch the ogre, but he just sits on you. You're dead. Game over.");
// 			player.health = 0;
// 		}

// }





// Refactored Code
var player = {
	posX: 0,
	posY: 0,
	weapon: 0,
	health: 100,
	success: false,
}
var ogre = {
	health: 100,
	posX: Math.floor((Math.random()*100)+1),
	posY: Math.floor((Math.random()*100)+1),
}
var rocketLauncher = {
	damage: 100,
	posX: Math.floor((Math.random()*100)+1),
	posY: Math.floor((Math.random()*100)+1),
}

var rocketLauncher2 = {
	damage: 100,
	posX: Math.floor((Math.random()*100)+1),
	posY: Math.floor((Math.random()*100)+1),
}
var rocketLauncher3 = {
	damage: 100,
	posX: Math.floor((Math.random()*100)+1),
	posY: Math.floor((Math.random()*100)+1),
}
var rocketLauncher4 = {
	damage: 100,
	posX: Math.floor((Math.random()*100)+1),
	posY: Math.floor((Math.random()*100)+1),
}

function move(direction) {
	if(direction === 'forward' && player.posX < 91){
		player.posX += 10;
		console.log("You moved FORWARD to (" + player.posX + ", " + player.posY + ")");
	}
	else if(direction === 'forward' && player.posX >= 100){
		console.log('You have hit a wall. Choose another direction.');
	}
	else if(direction === 'back' && player.posX > 9){
		player.posX -= 10;
		console.log("You moved BACKWARD to (" + player.posX + ", " + player.posY + ")");
	}
	else if(direction === 'back' && player.posX < 10){
		console.log('You have hit a wall. Choose another direction.');
	}
	else if(direction === 'up' && player.posY < 91){
		player.posY += 10;
		console.log("You moved UP to (" + player.posX + ", " + player.posY + ")");
	}
	else if(direction === 'up' && player.posY > 90){
		console.log('You have hit a wall. Choose another direction.');
	}
	else if(direction === 'down' && player.posY > 9){
		player.posY -= 10;
		console.log("You moved DOWN to (" + player.posX + ", " + player.posY + ")");
	}
	else if(direction === 'down' && player.posY < 10){
		console.log('You have hit a wall. Choose another direction.');
	}

	ogre.posX = Math.floor((Math.random()*100)+1);
	ogre.posY = Math.floor((Math.random()*100)+1);
	console.log("The ogre stirs. He's at (" + ogre.posX + ", " + ogre.posY + ")");

	if(player.posX === rocketLauncher.posX && player.posY === rocketLauncher.posY){
		player.weapon = 100;
		console.log("You picked up a rocket launcher! Go slay the ogre!");
	}
	if(player.posX === rocketLauncher2.posX && player.posY === rocketLauncher2.posY){
		player.weapon = 100;
		console.log("You picked up a rocket launcher! Go slay the ogre!");
	}
	if(player.posX === rocketLauncher3.posX && player.posY === rocketLauncher3.posY){
		player.weapon = 100;
		console.log("You picked up a rocket launcher! Go slay the ogre!");
	}
	if(player.posX === rocketLauncher4.posX && player.posY === rocketLauncher4.posY){
		player.weapon = 100;
		console.log("You picked up a rocket launcher! Go slay the ogre!");
	}
	if(player.posX === ogre.posX && player.posY === ogre.posY && player.weapon != 100){
		console.log("The ogre is near and you have no weapon! This will not end well for you.");
		attackOrFlee('flee');
	}
	if(player.posX === ogre.posX && player.posY === ogre.posY && player.weapon == 100){
		attackOrFlee('attack');
	}

	function attackOrFlee(action) {
		if(action === 'flee'){
			player.health = 0;
			console.log('You try to run, but the ogre smashes you into oblivion. Game over.');
		}
		else if(action === 'attack' && player.weapon == 100){
			ogre.health = 0;
			player.success = true;
			console.log('You fire your rocket launcher at the ogre. It does ' + rocketLauncher.damage + ' damage. The ogre explodes. You win!');
		}

		else if(action === 'attack' && player.weapon == 0){
			player.health = 0;
			console.log("You don't have a weapon so you try to punch the ogre, but he just sits on you. You're dead. Game over.");
		}
	}
}
function play(){
	while(player.health == 100 && player.success == false){
		move('forward') || move('up') || move('back') || move('down')
	}
}

play();




// Reflection
// - What was the most difficult part of this challenge?
// Getting my 'game' to work the way I described it in the pseudocode has been very difficult. I still can't figure out how to
// get the player to encounter the 'rocket launcher'.

// - What did you learn about creating objects and functions that interact with one another?
// Getting objects and functions to interact is a more straightforward process in JS than in Ruby since you don't have to
// use classes to pass data around in JS.

// - Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I really focused on just getting a minimum viable product that would work in a very basic way, so my refactored solution doesn't contain any
// new methods.
// - How can you access and manipulate properties of objects?
// You can manipulate properties of objects using the 'object.property' syntax or the 'object[property]' syntax.
//
//
//
//
//
//