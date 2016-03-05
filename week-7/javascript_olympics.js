 // JavaScript Olympics

// I paired with Dan Shapiro on this challenge.

// This challenge took me 1.5 hours.

// Bulk Up
var athletes = [
  {name:"Sarah Hughes" , event: "Ladies\' Singles"},
  {name: "Bob Hardy" , event: "Long Jump" },
  {name: "Dan Petra" , event: "Shot Put" },
  {name: "Erica Sanders", event: "Hurdles" },
  {name: "Tony Huff" , event: "Skiing" }
];

function addWin(athletesArray){
  for (var i = 0; i < athletesArray.length; i ++){
	    var object = athletesArray[i];

	    object.win = function() {
    		console.log(object.name + " has won " + object.event);
	  	};
	  	//object.win();
 }
 return athletesArray;
}

console.log(addWin(athletes));



// Jumble your words
function reverse(string) {
  var reverseString = string.split("").reverse().join("");
  console.log(reverseString);
  return reverseString;
}

var string = "Bootcamp";
reverse(string);


// 2,4,6,8
// Non-destructive version of even method
// function even(numberArray){
//   var evenArray = [];
//   for (var i=0; i < numberArray.length; i++){
//     if(numberArray[i] % 2 == 0){
//       evenArray.push(numberArray[i]);
//     }
//   }

//   return evenArray;
// }

// console.log(even([1,2,3,4,5,6,7,8,9]));

//Refactor 2,4,6,8
//Destructive version of even function
function even(numberArray){
  for (var i=0; i < numberArray.length; i++){
    if((numberArray[i] % 2) != 0){
      numberArray.splice(i, 1);
    }
  }

  return numberArray;
}

console.log(even([1,2,3,4,5,6,7,8,9]));


// "We built this city"
function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!");
console.log(michaelPhelps.constructor === Athlete);
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote);



// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?
- Setting up the constructor functions was new and I immediately related it to class
initialization in Ruby. Also got some practice chaining functions together in JS. In a
previous challenge I tried to chain together #split #reverse #join and it didn't work.
Must have been the order of the functions. But in this challenge I was able to successfully
use a function chain: var reverseString = string.split("").reverse().join("");

What are constructor functions?
- A constructor function is one of the ways to create an Object type in JS. You create
the Object type by defining a constructor function that contains the properties you want
the Object to have, then you create new Instances of that Object by using the keyword
"new". Ex: var Rufus = new Dog(breed, age);

How are constructors different from Ruby classes (in your research)?
- The biggest difference I can find is that in Ruby there is a Class object
that is responsible for nothing else other than creating new instances. That Class object
has special methods that are soley for the purpose of class creation and even instances of it
don't share all the methods.
In JS ANY function can become a constructor and has the .constructor property. There's not a
special TYPE of function set aside for the purpose of creating instances (like the Ruby Class does).
So whether or not you intended for a function to serve as a constructor, you can create a new instance of
it by using the keyword "new".
Another interesting point I found is that in Ruby, the class itself is not what the class
defines. For example, the String class object is not actually a String! It's an object, but you can't
treat it as a String, even though it gives String instances all their properties. In JS, the constructor
function IS exactly like what it's defining. It's a prototype, and by creating new instances we're
basically making "copies" of that prototype, to which you can also add additional properties  or
change values.
*/