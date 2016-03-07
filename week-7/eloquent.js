// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`.
//Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var myName = "Erica";

//User Input
// var fav = prompt("What's your favorite food?");
// if (fav) {
// 	console.log("Hey! That's my favorite too!");
// }

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
// FizzBuzz
// for (var i=0; i<=100; i++){
// 	if ((i % 3 === 0) && (i % 5 === 0)){
// 		console.log("FizzBuzz");
// 	}
// 	else if (i % 3 === 0) {
// 		console.log("Fizz");
// 	}
// 	else if (i % 5 === 0){
// 		console.log("Buzz");
// 	}
// 	else {
// 		console.log(i);
// 	}
// }

//Refactor FizzBuzz
// for (var i=0; i<=100; i++){
// 	((i % (3*5)) === 0) ? console.log("FizzBuzz")
// 	: (i % 3 === 0) ? console.log("Fizz")
// 	: (i % 5 === 0) ? console.log("Buzz")
// 	: console.log(i);
// }

// Functions
// Complete the `minimum` exercise.
var min = function(num1, num2){
	var min = (num1 < num2) ? num1 : num2;
	return min;
}
console.log(min(0, 10));
// → 0
console.log(min(0, -10));
// → -10

//Recursion
var isEven = function(num){
	//if num is negative, change it to positive
	if (num < 0)
		num = -num;
	//base case
	if (num === 0)
		return true;
	else if (num === 1)
		return false;
	//repeat and decrement down to base case
	else
		return isEven(num-2);
}

console.log(isEven(50));
// → true
console.log(isEven(75));
// → false
console.log(isEven(-1));
// → ??

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods,
//and a quirk below.
var me = {
	name: "Erica",
	age: 33,
	favFoods: ["Jamaican food", "Italian food", "Chinese food"],
	quirk: "Proud introvert!"
}

console.log(me);