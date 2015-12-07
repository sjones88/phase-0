// Person 1
// As a user I need tests that will take a list of numbers and return the 
// mean, median, and mode of all the numbers on the list.  These programs   
// must be able to accomodate lists of varying size.

// Input: An array of numbers 
// Output: The mean, median, and mode of all the numbers on the list.
// Steps: 
//   Mean: Iterate through array and add all elements together, then divide by
//         the number of elements in the array.
//   Median: Sort the array from smallest to largest numbers, then return the 
//           array element which is in the middle of the array.
//   Mode: First, create an empty hash where the keys are numbers which occur 
//         in our array and the values represent the frequency of these 
//         numbers occur in our array. Return the number with the highest 
//         frequency. 

function meanAndFriends(list) {
	function mean(list) {
		var sum = [list[0]];
		for (i = 1; i < list.length; i++)
			sum.push(list[i] + sum[i-1]);
		sum.reverse();
		var calculateMean = undefined;
		calculateMean = sum[0]/list.length;
		console.log("Mean: " + calculateMean);
		return calculateMean;
	};
	function median(list) {
		var sortedList = list.sort(function(a,b){return a-b});
		var medianIndex = (list.length - 1) / 2;
		medianIndex = Math.round(medianIndex);
		console.log("Median: " + list[medianIndex]);
		return list[medianIndex];
	};
	function mode(list) {
		var frequencies = {}
		var sortList = list.sort(function(a,b){return a-b});
		var uniqueList = [sortList[0]];
		for (i = 1; i < list.length; i++)
			if (sortList[i] != sortList[i-1])
				uniqueList.push(sortList[i]);
		for (x = 0; x < (list.length); x++)
			frequencies[uniqueList[x]] = 0;
		for (y = 0; y < (list.length); y++)
			frequencies[sortList[y]] += 1;
		var max = undefined;
		for(var i in frequencies) {
    		if (frequencies.hasOwnProperty(i)) {
        	max = Math.max(max, frequencies[i]);
    		}
		}
		console.log(frequencies);
	}

mean(list);
median(list);
mode(list);
}

meanAndFriends([1,1,2,3,4,5,6,7,8,8,10,4,0,1,1,1,1]);