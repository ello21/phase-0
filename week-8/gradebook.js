/*
Gradebook from Names and Scores

I worked on this challenge with Wesley El-Amin.
This challenge took me 1 hour.

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
/*
var gradebook = {};

for (var i in students){
  gradebook[students[i]] = {}
};

var i = 0;
for (var n in gradebook){
  gradebook[n]["testScores"] = scores[i];
  i++;
};

gradebook.addScore = function(name, score){
   for(var n in gradebook){
       if(name === n){
         gradebook[name]["testScores"].push(score);
       }
   }
}

gradebook.getAverage = function(name){
  return average(gradebook[name]["testScores"]);
};

function average (array){
  var total = 0;
  for(var i in array){
    total+=array[i];
  };
  var avg = total/array.length;
  return avg;
};

*/

// __________________________________________
// Refactored Solution

var gradebook = {};

for (var i in students){
  gradebook[students[i]] = {}
};

var i = 0;
for (var n in gradebook){
  gradebook[n]["testScores"] = scores[i];
  i++;
};

gradebook.addScore = function(name, score){
  if(gradebook[name] === undefined){
    throw "ERROR: Name not in gradebook";
  }
  else
    gradebook[name]["testScores"].push(score);
};

gradebook.getAverage = function(name){
  return average(gradebook[name]["testScores"]);
};

function average (array){
  var total = array.reduce(function(sum, element) {
    return sum + element;
  });
  var avg = total/array.length;
  return avg;
};

//Test code
// console.log(gradebook.getAverage("Susan"));
// console.log(gradebook.addScore("Susan", 80));
// console.log(gradebook);

// __________________________________________
// Reflect
/*
What did you learn about adding functions to objects?
- I originally thought that average() needed to be a property within the
gradebook object so that we could call it inside gradebook.getAverage().
My pair pointed out that we could still call it even when it's defined
outside of the object.

How did you iterate over nested arrays in JavaScript?
- We used for...in loops along with bracket notation in the body of the
loop to reference the properties and indexes that we needed to access.
Ex: var i = 0;
    for (var n in gradebook){
      gradebook[n]["testScores"] = scores[i];
      i++;
    };

Were there any new methods you were able to incorporate? If so, what were they
and how did they work?
- We used reduce() to add up the elements in an array. reduce() takes a callback
function as an argument. The callback function takes 2 arguments, where the first
holds the sum, and the second holds the element to be added to the sum during each
iteration through the array.

*/







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
