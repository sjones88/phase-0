// U3.W9:JQuery


// I worked on this challenge with Mason Pierce.
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

	$('body').css({'background-color': 'pink'})
	$('img').css({border: 'solid', 'border-radius': '5px', padding: '5px', 'border-color':'red'})

//RELEASE 2:
  //Add code here to select elements of the DOM
// var firstHeading = $('h1:first')
// var mascot = $('.mascot')
// var image = $('img')
// var bodyElement = $('body')

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
// $(document).ready(function() {
	var styles = {
		color: 'red',
		border: 'solid',
		visibility: 'visible',
	};
	$('h1').css(styles);

//RELEASE 4 & RELEASE 5:

  // Add the code for the event listener here

	$('.mascot h1').html('Chorus Frogs 2016');
	$('img').on('mouseenter', function() {
		$(this).css({border: 'solid', 'border-radius': '3px', padding: '0px', 'border-color':'red'});
		$(this).attr('src', 'https://upload.wikimedia.org/wikipedia/commons/e/ea/Western_chorus_frog.jpg');
		$(this).animate({
			width: '50%',
		});
	});
	$('img').on('mouseleave', function() {
		$(this).css({height: '100%', border: 'solid', 'border-radius': '3px', padding: '5px', 'border-color':'red'});
		$(this).attr('src', 'dbc_logo.png');
		$(this).animate({
			width: '220px',
		})
	});

});  // end of the document.ready function: do not remove or write DOM manipulation below this.
// Reflection:
// What is jQuery?
// jQuery is a library of JavaScript functions that make manipulating DOM elements easier.

// What does jQuery do for you?
// jQuery give you a broad range of ways to manipulate DOM elements without having to write long, complex 
// JavaScript code.

// What did you learn about the DOM while working on this challenge?
// I learned to appreciate the tree-like structure of the DOM. It's a clear and highly intelligible way to
// organize the elements of a webpage.







