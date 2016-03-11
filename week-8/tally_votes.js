// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}


/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// FOR each property (voter) in Object (votes)
//   FOR each property (position) in Object (voteCount)
//     CREATE variable (candidates) to store value of each students selection for each position
//     IF (voteCount) already has a property the matches the candidates name
//     THEN increment the tally by 1
//     ELSE CREATE property and set equal to 1
//   END
// END

// CREATE variable (maximum), set equal to 0
// FOR each property (position) in Object (voteCount)
//     FOR each property (candidate) in (position)
//       IF value (count) of (candidate) is greater than maximum
//       THEN
//         SET (maximum) equal to (count)
//         SET the winner equal to the current candidate
//     END
//     SET the (position) property in (officers) equal to winner
// END


// __________________________________________
// Initial Solution

// for(var voter in votes){

//   for(var position in voteCount){
//     var candidates = votes[voter][position];
//     if (voteCount[position].hasOwnProperty(candidates)) {
//       voteCount[position][candidates] += 1;
//     }
//     else {
//       voteCount[position][candidates] = 1;
//     }
//   }
// }

// for(var position in voteCount){
//   var tallys = voteCount[position];
//   var max = 0;
//   var winner;

//   for(var candidate in tallys){
//     var numVotes = tallys[candidate];
//     if(numVotes > max){
//       max = numVotes;
//       winner = candidate;
//     }

//   }
//   officers[position] = winner;
// }


// __________________________________________
// Refactored Solution

for(var voter in votes){

  for(var position in voteCount){
    var candidate = votes[voter][position];
    var tallys = voteCount[position];
    var max = 0;
    var winner;

    tallys.hasOwnProperty(candidate)? tallys[candidate] += 1
    : tallys[candidate] = 1;

    for(var candidate in tallys){
      var numVotes = tallys[candidate];

      if(numVotes > max){
        max = numVotes;
        winner = candidate;
      }
    }

    officers[position] = winner;
  }
}


// Driver code
console.log(voteCount);
console.log(officers);



// __________________________________________
// Reflection
/*
What did you learn about iterating over nested objects in JavaScript?
- Nest for...in loops will not work as expected unless you create a local
variable to hold the Object for the inner loop. The variables declared
in the loop header are local to that loop and can't be referenced in sub-loops.

Were you able to find useful methods to help you with this?
- We found a method Math.max() to use for determining the max number of
tallys in each group of candidates, however using it turned out to be just
as much work/code as not using it. We would have had to create an array to
hold the number of votes each candidate received, then loop through that
array and make each element an argument for Math.max(). It wasn't ideal.

What concepts were solidified in the process of working through this challenge?
- Definitely solidified the scope of local variables, setting variables at the appropriate place
within nested loops, and iterating through nested objects. We got stuck when it
came to setting winner equal to the candidate's name. We originally had most of
the variables declared outside of the for...in loop, but we realized that the values
needed to be "reset" after each position was looped through, rather than holding on to
the value from the previous position. This is why we moved the variables inside the
outer loop. After each position they are reinitialized.
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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
